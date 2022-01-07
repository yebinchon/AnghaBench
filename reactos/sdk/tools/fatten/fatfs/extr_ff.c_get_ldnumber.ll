; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_get_ldnumber.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_get_ldnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_USE_LFN = common dso_local global i64 0, align 8
@_VOLUMES = common dso_local global i8 0, align 1
@CurrVol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @get_ldnumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ldnumber(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 -1, i32* %7, align 4
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %71

11:                                               ; preds = %1
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %31, %11
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i64, i64* @_USE_LFN, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 32, i32 33
  %22 = icmp sge i32 %17, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 58
  br label %28

28:                                               ; preds = %23, %14
  %29 = phi i1 [ false, %14 ], [ %27, %23 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  br label %14

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 58
  br i1 %38, label %39, label %70

39:                                               ; preds = %34
  %40 = load i8**, i8*** %3, align 8
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 48
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %6, align 1
  %48 = load i8, i8* %6, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp slt i32 %49, 10
  br i1 %50, label %51, label %68

51:                                               ; preds = %39
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i8, i8* %6, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* @_VOLUMES, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i8, i8* %6, align 1
  %63 = sext i8 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  %66 = load i8**, i8*** %3, align 8
  store i8* %65, i8** %66, align 8
  br label %67

67:                                               ; preds = %61, %55
  br label %68

68:                                               ; preds = %67, %51, %39
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %73

70:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %1
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
