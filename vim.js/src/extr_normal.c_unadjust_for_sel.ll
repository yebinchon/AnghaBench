; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_normal.c_unadjust_for_sel.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_normal.c_unadjust_for_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }

@p_sel = common dso_local global i8* null, align 8
@VIsual = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@curwin = common dso_local global %struct.TYPE_10__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@curbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @unadjust_for_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unadjust_for_sel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = load i8*, i8** @p_sel, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 101
  br i1 %6, label %7, label %51

7:                                                ; preds = %0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curwin, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = call i32 @equalpos(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 @VIsual, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %7
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curwin, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = call i64 @lt(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 @VIsual, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curwin, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %2, align 8
  br label %21

20:                                               ; preds = %12
  store %struct.TYPE_9__* @VIsual, %struct.TYPE_9__** %2, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  br label %50

31:                                               ; preds = %21
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ml_get(i32 %43)
  %45 = call i64 @STRLEN(i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %1, align 4
  br label %53

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49, %26
  br label %51

51:                                               ; preds = %50, %7, %0
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %51, %36
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @equalpos(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

declare dso_local i64 @lt(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

declare dso_local i64 @STRLEN(i32) #1

declare dso_local i32 @ml_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
