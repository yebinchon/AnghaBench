; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lbaselib.c_b_str2int.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lbaselib.c_b_str2int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPACECHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i64*)* @b_str2int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @b_str2int(i8* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @SPACECHARS, align 4
  %13 = call i32 @strspn(i8* %11, i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  store i32 1, i32* %9, align 4
  br label %33

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 43
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isalnum(i8 zeroext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i8* null, i8** %4, align 8
  br label %95

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %71, %39
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @isdigit(i8 zeroext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %48, 48
  br label %57

50:                                               ; preds = %40
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call signext i8 @toupper(i8 zeroext %52)
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 %54, 65
  %56 = add nsw i32 %55, 10
  br label %57

57:                                               ; preds = %50, %45
  %58 = phi i32 [ %49, %45 ], [ %56, %50 ]
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i8* null, i8** %4, align 8
  br label %95

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %8, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  br label %71

71:                                               ; preds = %63
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @isalnum(i8 zeroext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %40, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* @SPACECHARS, align 4
  %79 = call i32 @strspn(i8* %77, i32 %78)
  %80 = load i8*, i8** %5, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i32, i32* %8, align 4
  %87 = sub i32 0, %86
  br label %90

88:                                               ; preds = %76
  %89 = load i32, i32* %8, align 4
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i32 [ %87, %85 ], [ %89, %88 ]
  %92 = zext i32 %91 to i64
  %93 = load i64*, i64** %7, align 8
  store i64 %92, i64* %93, align 8
  %94 = load i8*, i8** %5, align 8
  store i8* %94, i8** %4, align 8
  br label %95

95:                                               ; preds = %90, %62, %38
  %96 = load i8*, i8** %4, align 8
  ret i8* %96
}

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local signext i8 @toupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
