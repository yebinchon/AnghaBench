; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_treectl.c_ScanDirLevel.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_treectl.c_ScanDirLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@szMessage = common dso_local global i32 0, align 4
@szStarDotStar = common dso_local global i32 0, align 4
@ATTR_DIR = common dso_local global i32 0, align 4
@TF_HASCHILDREN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScanDirLevel(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @szMessage, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @lstrcpy(i32 %10, i32 %11)
  %13 = load i32, i32* @szMessage, align 4
  %14 = call i32 @AddBackslash(i32 %13)
  %15 = load i32, i32* @szMessage, align 4
  %16 = load i32, i32* @szStarDotStar, align 4
  %17 = call i32 @lstrcat(i32 %15, i32 %16)
  %18 = load i32, i32* @szMessage, align 4
  %19 = load i32, i32* @ATTR_DIR, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @WFFindFirst(%struct.TYPE_10__* %9, i32 %18, i32 %21)
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %48, %3
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ISDOTDIR(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ATTR_DIR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i32, i32* @TF_HASCHILDREN, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %8, align 8
  br label %48

46:                                               ; preds = %32, %26
  %47 = call i64 @WFFindNext(%struct.TYPE_10__* %9)
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %46, %39
  br label %23

49:                                               ; preds = %23
  %50 = call i32 @WFFindClose(%struct.TYPE_10__* %9)
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @lstrcpy(i32, i32) #1

declare dso_local i32 @AddBackslash(i32) #1

declare dso_local i32 @lstrcat(i32, i32) #1

declare dso_local i64 @WFFindFirst(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ISDOTDIR(i32) #1

declare dso_local i64 @WFFindNext(%struct.TYPE_10__*) #1

declare dso_local i32 @WFFindClose(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
