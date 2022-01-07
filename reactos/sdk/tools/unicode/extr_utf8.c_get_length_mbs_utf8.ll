; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_utf8.c_get_length_mbs_utf8.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_utf8.c_get_length_mbs_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_ERR_INVALID_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @get_length_mbs_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_length_mbs_utf8(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %10, align 8
  br label %16

16:                                               ; preds = %51, %27, %3
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %11, align 1
  %24 = load i8, i8* %11, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp slt i32 %25, 128
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %16

30:                                               ; preds = %20
  %31 = load i8, i8* %11, align 1
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @decode_utf8_char(i8 zeroext %31, i8** %6, i8* %32)
  store i32 %33, i32* %9, align 4
  %34 = icmp ule i32 %33, 1114111
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = icmp ugt i32 %36, 65535
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %51

44:                                               ; preds = %30
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -2, i32* %4, align 4
  br label %54

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %41
  br label %16

52:                                               ; preds = %16
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @decode_utf8_char(i8 zeroext, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
