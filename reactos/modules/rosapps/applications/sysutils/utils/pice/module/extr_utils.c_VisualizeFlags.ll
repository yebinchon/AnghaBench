; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_VisualizeFlags.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_VisualizeFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VisualizeFlags.FlagNames = internal global [12 x i8] c"c\00p\00a\00zstido", align 1
@VisualizeFlags.temp = internal global [32 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @VisualizeFlags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %47, %1
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 12
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* @VisualizeFlags.FlagNames, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %9
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [12 x i8], [12 x i8]* @VisualizeFlags.FlagNames, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = call signext i8 @PICE_toupper(i8 signext %24)
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* @VisualizeFlags.temp, i64 0, i64 %28
  store i8 %25, i8* %29, align 1
  br label %39

30:                                               ; preds = %16
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [12 x i8], [12 x i8]* @VisualizeFlags.FlagNames, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* @VisualizeFlags.temp, i64 0, i64 %37
  store i8 %34, i8* %38, align 1
  br label %39

39:                                               ; preds = %30, %20
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* @VisualizeFlags.temp, i64 0, i64 %42
  store i8 32, i8* %43, align 1
  br label %44

44:                                               ; preds = %39, %9
  %45 = load i32, i32* %2, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %5

50:                                               ; preds = %5
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* @VisualizeFlags.temp, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = call i32 @PICE_strrev(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @VisualizeFlags.temp, i64 0, i64 0))
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @VisualizeFlags.temp, i64 0, i64 0)
}

declare dso_local signext i8 @PICE_toupper(i8 signext) #1

declare dso_local i32 @PICE_strrev(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
