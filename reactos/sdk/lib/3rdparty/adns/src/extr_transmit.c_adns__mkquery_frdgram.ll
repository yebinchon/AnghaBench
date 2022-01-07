; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_transmit.c_adns__mkquery_frdgram.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_transmit.c_adns__mkquery_frdgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@adns_s_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @adns__mkquery_frdgram(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call i64 @mkquery_header(i32 %23, i32* %24, i32* %25, i32 %26)
  store i64 %27, i64* %22, align 8
  %28 = load i64, i64* %22, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i64, i64* %22, align 8
  store i64 %31, i64* %9, align 8
  br label %78

32:                                               ; preds = %8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @MKQUERY_START(i32* %33)
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @adns__findlabel_start(i32* %19, i32 %35, i32 -1, i32 0, i32* %36, i32 %37, i32 %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %51, %32
  %42 = call i64 @adns__findlabel_next(i32* %19, i32* %20, i32* %21)
  store i64 %42, i64* %22, align 8
  %43 = load i64, i64* %22, align 8
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* %20, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %70

51:                                               ; preds = %41
  %52 = load i32, i32* %20, align 4
  %53 = icmp slt i32 %52, 255
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %20, align 4
  %57 = call i32 @MKQUERY_ADDB(i32 %56)
  %58 = load i32*, i32** %18, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %21, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = call i32 @memcpy(i32* %58, i32* %62, i64 %64)
  %66 = load i32, i32* %20, align 4
  %67 = load i32*, i32** %18, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %18, align 8
  br label %41

70:                                               ; preds = %50
  %71 = call i32 @MKQUERY_ADDB(i32 0)
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @MKQUERY_STOP(i32* %72)
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i64 @mkquery_footer(i32* %74, i32 %75)
  store i64 %76, i64* %22, align 8
  %77 = load i64, i64* @adns_s_ok, align 8
  store i64 %77, i64* %9, align 8
  br label %78

78:                                               ; preds = %70, %30
  %79 = load i64, i64* %9, align 8
  ret i64 %79
}

declare dso_local i64 @mkquery_header(i32, i32*, i32*, i32) #1

declare dso_local i32 @MKQUERY_START(i32*) #1

declare dso_local i32 @adns__findlabel_start(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @adns__findlabel_next(i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MKQUERY_ADDB(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @MKQUERY_STOP(i32*) #1

declare dso_local i64 @mkquery_footer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
