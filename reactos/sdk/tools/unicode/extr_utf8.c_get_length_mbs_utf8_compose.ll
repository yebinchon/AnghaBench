; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_utf8.c_get_length_mbs_utf8_compose.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_utf8.c_get_length_mbs_utf8_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_ERR_INVALID_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @get_length_mbs_utf8_compose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_length_mbs_utf8_compose(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %11, align 8
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %74, %51, %29, %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %75

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %12, align 1
  %26 = load i8, i8* %12, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i8, i8* %12, align 1
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %30, i8* %31, align 1
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %18

34:                                               ; preds = %22
  %35 = load i8, i8* %12, align 1
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @decode_utf8_char(i8 zeroext %35, i8** %6, i8* %36)
  store i32 %37, i32* %9, align 4
  %38 = icmp ule i32 %37, 65535
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 %45, i8* %46, align 1
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %48 = call signext i8 @wine_compose(i8* %47)
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %48, i8* %49, align 1
  %50 = icmp ne i8 %48, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %18

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* %9, align 4
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %55, i8* %56, align 1
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %74

59:                                               ; preds = %34
  %60 = load i32, i32* %9, align 4
  %61 = icmp ule i32 %60, 1114111
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %8, align 4
  %65 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %65, align 1
  br label %73

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 -2, i32* %4, align 4
  br label %77

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %62
  br label %74

74:                                               ; preds = %73, %53
  br label %18

75:                                               ; preds = %18
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @decode_utf8_char(i8 zeroext, i8**, i8*) #1

declare dso_local signext i8 @wine_compose(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
