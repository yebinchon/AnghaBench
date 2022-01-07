; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_cookie.c_domain_match.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_cookie.c_domain_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"comparing %s with %s\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_3__*, i64)* @domain_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @domain_match(i32* %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @debugstr_w(i32* %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @debugstr_w(i32* %12)
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13)
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @strstrW(i32* %18, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %4, align 8
  br label %41

26:                                               ; preds = %17, %3
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @strcmpW(i32* %30, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* @FALSE, align 8
  store i64 %37, i64* %4, align 8
  br label %41

38:                                               ; preds = %29, %26
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %39, %36, %24
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @strstrW(i32*, i32*) #1

declare dso_local i64 @strcmpW(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
