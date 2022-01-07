; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ExtractToken.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ExtractToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pExpression = common dso_local global i8* null, align 8
@ulIndex = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExtractToken(i64* %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  br label %3

3:                                                ; preds = %26, %1
  %4 = load i8*, i8** @pExpression, align 8
  %5 = load i64, i64* @ulIndex, align 8
  %6 = getelementptr inbounds i8, i8* %4, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = call i64 @PICE_isalpha(i8 signext %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** @pExpression, align 8
  %12 = load i64, i64* @ulIndex, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @PICE_isdigit(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load i8*, i8** @pExpression, align 8
  %19 = load i64, i64* @ulIndex, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 95
  br label %24

24:                                               ; preds = %17, %10, %3
  %25 = phi i1 [ true, %10 ], [ true, %3 ], [ %23, %17 ]
  br i1 %25, label %26, label %36

26:                                               ; preds = %24
  %27 = load i8*, i8** @pExpression, align 8
  %28 = load i64, i64* @ulIndex, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* @ulIndex, align 8
  %30 = getelementptr inbounds i8, i8* %27, i64 %28
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i64
  %33 = load i64*, i64** %2, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %2, align 8
  store i64 %32, i64* %33, align 8
  %35 = load i64*, i64** %2, align 8
  store i64 0, i64* %35, align 8
  br label %3

36:                                               ; preds = %24
  ret void
}

declare dso_local i64 @PICE_isalpha(i8 signext) #1

declare dso_local i64 @PICE_isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
