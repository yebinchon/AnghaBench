; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-term.c_tty_term_describe.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-term.c_tty_term_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.tty_term = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@tty_term_describe.s = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [19 x i8] c"%4u: %s: [missing]\00", align 1
@tty_term_codes = common dso_local global %struct.TYPE_6__* null, align 8
@VIS_OCTAL = common dso_local global i32 0, align 4
@VIS_CSTYLE = common dso_local global i32 0, align 4
@VIS_TAB = common dso_local global i32 0, align 4
@VIS_NL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%4u: %s: (string) %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%4u: %s: (number) %d\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%4u: %s: (flag) %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tty_term_describe(%struct.tty_term* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_term*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  store %struct.tty_term* %0, %struct.tty_term** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tty_term*, %struct.tty_term** %3, align 8
  %7 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %90 [
    i32 130, label %14
    i32 128, label %23
    i32 129, label %51
    i32 131, label %69
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tty_term_codes, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, i8*, i32, i32, ...) @xsnprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tty_term_describe.s, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21)
  br label %90

23:                                               ; preds = %2
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %25 = load %struct.tty_term*, %struct.tty_term** %3, align 8
  %26 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VIS_OCTAL, align 4
  %35 = load i32, i32* @VIS_CSTYLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @VIS_TAB, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @VIS_NL, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @strnvis(i8* %24, i32 %33, i32 128, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tty_term_codes, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %50 = call i32 (i8*, i32, i8*, i32, i32, ...) @xsnprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tty_term_describe.s, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %48, i8* %49)
  br label %90

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tty_term_codes, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tty_term*, %struct.tty_term** %3, align 8
  %60 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, i32, i8*, i32, i32, ...) @xsnprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tty_term_describe.s, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %58, i8* %67)
  br label %90

69:                                               ; preds = %2
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tty_term_codes, align 8
  %72 = load i32, i32* %4, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tty_term*, %struct.tty_term** %3, align 8
  %78 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %89 = call i32 (i8*, i32, i8*, i32, i32, ...) @xsnprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tty_term_describe.s, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %76, i8* %88)
  br label %90

90:                                               ; preds = %2, %69, %51, %23, %14
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tty_term_describe.s, i64 0, i64 0)
}

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @strnvis(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
