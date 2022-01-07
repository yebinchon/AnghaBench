; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_calendarspec.c_parse_component_decimal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_calendarspec.c_parse_component_decimal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32*)* @parse_component_decimal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_component_decimal(i8** %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %9, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i32 @isdigit(i8 signext %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %94

20:                                               ; preds = %3
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @parse_one_number(i8* %22, i8** %9, i64* %8)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %94

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %81

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @USEC_PER_SEC, align 8
  %34 = mul i64 %32, %33
  %35 = load i64, i64* @USEC_PER_SEC, align 8
  %36 = udiv i64 %34, %35
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ERANGE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %94

42:                                               ; preds = %31
  %43 = load i64, i64* @USEC_PER_SEC, align 8
  %44 = load i64, i64* %8, align 8
  %45 = mul i64 %44, %43
  store i64 %45, i64* %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %51, label %80

51:                                               ; preds = %42
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 46
  br i1 %56, label %57, label %80

57:                                               ; preds = %51
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %9, align 8
  %60 = call i32 @parse_fractional_part_u(i8** %9, i32 6, i32* %11)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %94

65:                                               ; preds = %57
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %67, %68
  %70 = load i64, i64* %8, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @ERANGE, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %94

75:                                               ; preds = %65
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %75, %51, %42
  br label %81

81:                                               ; preds = %80, %28
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @INT_MAX, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @ERANGE, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %94

88:                                               ; preds = %81
  %89 = load i8*, i8** %9, align 8
  %90 = load i8**, i8*** %5, align 8
  store i8* %89, i8** %90, align 8
  %91 = load i64, i64* %8, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %85, %72, %63, %39, %26, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @parse_one_number(i8*, i8**, i64*) #1

declare dso_local i32 @parse_fractional_part_u(i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
