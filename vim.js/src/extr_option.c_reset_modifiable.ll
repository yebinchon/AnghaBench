; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_option.c_reset_modifiable.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_option.c_reset_modifiable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8** }

@FALSE = common dso_local global i8* null, align 8
@curbuf = common dso_local global %struct.TYPE_4__* null, align 8
@p_ma = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"ma\00", align 1
@options = common dso_local global %struct.TYPE_3__* null, align 8
@VI_DEFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_modifiable() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @FALSE, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curbuf, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i8* %2, i8** %4, align 8
  %5 = load i8*, i8** @FALSE, align 8
  store i8* %5, i8** @p_ma, align 8
  %6 = call i32 @findoption(i32* bitcast ([3 x i8]* @.str to i32*))
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i8*, i8** @FALSE, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @options, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = load i64, i64* @VI_DEFAULT, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  store i8* %10, i8** %18, align 8
  br label %19

19:                                               ; preds = %9, %0
  ret void
}

declare dso_local i32 @findoption(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
