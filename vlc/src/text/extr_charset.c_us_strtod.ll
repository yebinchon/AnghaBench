; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_charset.c_us_strtod.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_charset.c_us_strtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_NUMERIC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @us_strtod(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* @LC_NUMERIC_MASK, align 4
  %9 = call i64 @newlocale(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @uselocale(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = call double @strtod(i8* %12, i8** %13)
  store double %14, double* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @uselocale(i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @freelocale(i64 %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load double, double* %7, align 8
  ret double %23
}

declare dso_local i64 @newlocale(i32, i8*, i32*) #1

declare dso_local i64 @uselocale(i64) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @freelocale(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
