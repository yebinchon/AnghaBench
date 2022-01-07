; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_lp_sub.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_lp_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@i = common dso_local global i64 0, align 8
@TSeq = common dso_local global i32 0, align 4
@TNot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lp_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_sub(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_19__, align 8
  %4 = alloca %struct.TYPE_19__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.TYPE_18__* @getpatt(i32* %11, i32 1, i32* %5)
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %7, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.TYPE_18__* @getpatt(i32* %13, i32 2, i32* %6)
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %8, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %16 = call i64 @tocharset(%struct.TYPE_18__* %15, %struct.TYPE_19__* %3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = call i64 @tocharset(%struct.TYPE_18__* %19, %struct.TYPE_19__* %4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i32*, i32** %2, align 8
  %24 = call %struct.TYPE_18__* @newcharset(i32* %23)
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %9, align 8
  %25 = load i64, i64* @i, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @i, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @i, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %30, %36
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %39 = call i32* @treebuffer(%struct.TYPE_18__* %38)
  %40 = load i64, i64* @i, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = call i32 @loopset(i64 %25, i32 %37)
  br label %83

43:                                               ; preds = %18, %1
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 2, %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  %49 = call %struct.TYPE_18__* @newtree(i32* %44, i32 %48)
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %10, align 8
  %50 = load i32, i32* @TSeq, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 2, %53
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @TNot, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %60 = call %struct.TYPE_18__* @sib1(%struct.TYPE_18__* %59)
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %63 = call %struct.TYPE_18__* @sib1(%struct.TYPE_18__* %62)
  %64 = call %struct.TYPE_18__* @sib1(%struct.TYPE_18__* %63)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memcpy(%struct.TYPE_18__* %64, %struct.TYPE_18__* %65, i32 %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = call %struct.TYPE_18__* @sib2(%struct.TYPE_18__* %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(%struct.TYPE_18__* %72, %struct.TYPE_18__* %73, i32 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %81 = call %struct.TYPE_18__* @sib1(%struct.TYPE_18__* %80)
  %82 = call i32 @joinktables(i32* %79, i32 1, %struct.TYPE_18__* %81, i32 2)
  br label %83

83:                                               ; preds = %43, %22
  ret i32 1
}

declare dso_local %struct.TYPE_18__* @getpatt(i32*, i32, i32*) #1

declare dso_local i64 @tocharset(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @newcharset(i32*) #1

declare dso_local i32 @loopset(i64, i32) #1

declare dso_local i32* @treebuffer(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @newtree(i32*, i32) #1

declare dso_local %struct.TYPE_18__* @sib1(%struct.TYPE_18__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_18__* @sib2(%struct.TYPE_18__*) #1

declare dso_local i32 @joinktables(i32*, i32, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
