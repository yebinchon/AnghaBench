; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_id3.c_next_text.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_id3.c_next_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@encoding_widths = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8, i64)* @next_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @next_text(i8* %0, i8 zeroext %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i64*, i64** @encoding_widths, align 8
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %71, %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %17
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %27
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sub i64 %35, %40
  %42 = icmp ule i64 %34, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %33
  store i64 1, i64* %10, align 8
  br label %44

44:                                               ; preds = %57, %43
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %60

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %44

60:                                               ; preds = %55, %44
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %9, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 %65
  store i8* %67, i8** %8, align 8
  br label %75

68:                                               ; preds = %60
  br label %70

69:                                               ; preds = %33
  store i8* null, i8** %4, align 8
  br label %86

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70, %27
  %72 = load i64, i64* %9, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %8, align 8
  br label %17

75:                                               ; preds = %64, %17
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = load i64, i64* %7, align 8
  %82 = icmp uge i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i8* null, i8** %8, align 8
  br label %84

84:                                               ; preds = %83, %75
  %85 = load i8*, i8** %8, align 8
  store i8* %85, i8** %4, align 8
  br label %86

86:                                               ; preds = %84, %69
  %87 = load i8*, i8** %4, align 8
  ret i8* %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
