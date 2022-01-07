; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_parse-util.c_parse_dev.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_parse-util.c_parse_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIGITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_dev(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @DIGITS, align 4
  %13 = call i64 @strspn(i8* %11, i32 %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 58
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %65

29:                                               ; preds = %19
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i8* @strndupa(i8* %30, i64 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @safe_atou(i8* %33, i32* %7)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %29
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i32 @safe_atou(i8* %43, i32* %8)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %65

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @DEVICE_MAJOR_VALID(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @DEVICE_MINOR_VALID(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @ERANGE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @makedev(i32 %61, i32 %62)
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %57, %47, %37, %26, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @strspn(i8*, i32) #1

declare dso_local i8* @strndupa(i8*, i64) #1

declare dso_local i32 @safe_atou(i8*, i32*) #1

declare dso_local i32 @DEVICE_MAJOR_VALID(i32) #1

declare dso_local i32 @DEVICE_MINOR_VALID(i32) #1

declare dso_local i32 @makedev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
