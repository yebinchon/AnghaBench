; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_xiph_test.c_test_xiph_SplitLavcHeaders.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_xiph_test.c_test_xiph_SplitLavcHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params_s = type { i32 }

@XIPH_MAX_HEADER_COUNT = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64, %struct.params_s*)* @test_xiph_SplitLavcHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_xiph_SplitLavcHeaders(i8* %0, i32* %1, i64 %2, %struct.params_s* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.params_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.params_s* %3, %struct.params_s** %8, align 8
  %14 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8*, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @xiph_SplitLavcHeaders(i32* %20, i8** %17, i32* %12, i64 %21, i32* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @VLC_SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.params_s*, %struct.params_s** %8, align 8
  %31 = call i32 @SplitCompare(i8* %28, i32* %20, i8** %17, i32 %29, %struct.params_s* %30)
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %27, %4
  %33 = load i32, i32* %13, align 4
  %34 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %34)
  ret i32 %33
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xiph_SplitLavcHeaders(i32*, i8**, i32*, i64, i32*) #2

declare dso_local i32 @SplitCompare(i8*, i32*, i8**, i32, %struct.params_s*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
