; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_codecharset.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_codecharset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ITestSet = common dso_local global i32 0, align 4
@IAny = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @codecharset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codecharset(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @charsettype(i32* %11, i32* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %54 [
    i32 129, label %14
    i32 128, label %19
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @codechar(i32* %15, i32 %16, i32 %17)
  br label %59

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @getinstr(i32* %23, i32 %24)
  %26 = bitcast %struct.TYPE_4__* %9 to i64*
  store i64 %25, i64* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ITestSet, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %22
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 2
  %37 = call i64 @getinstr(i32* %34, i32 %36)
  %38 = bitcast %struct.TYPE_4__* %10 to i64*
  store i64 %37, i64* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cs_equal(i32* %33, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @IAny, align 4
  %46 = call i32 @addinstruction(i32* %44, i32 %45, i32 0)
  br label %53

47:                                               ; preds = %32, %22, %19
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @addinstruction(i32* %48, i32 128, i32 0)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @addcharset(i32* %50, i32* %51)
  br label %53

53:                                               ; preds = %47, %43
  br label %59

54:                                               ; preds = %3
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @addinstruction(i32* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %53, %14
  ret void
}

declare dso_local i32 @charsettype(i32*, i32*) #1

declare dso_local i32 @codechar(i32*, i32, i32) #1

declare dso_local i64 @getinstr(i32*, i32) #1

declare dso_local i32 @cs_equal(i32*, i32) #1

declare dso_local i32 @addinstruction(i32*, i32, i32) #1

declare dso_local i32 @addcharset(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
