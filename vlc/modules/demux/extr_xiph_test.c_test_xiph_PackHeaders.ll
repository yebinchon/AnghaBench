; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_xiph_test.c_test_xiph_PackHeaders.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_xiph_test.c_test_xiph_PackHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params_s = type { i32, i32, i64 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64, %struct.params_s*)* @test_xiph_PackHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_xiph_PackHeaders(i8* %0, i32* %1, i64 %2, %struct.params_s* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.params_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.params_s* %3, %struct.params_s** %8, align 8
  %12 = load %struct.params_s*, %struct.params_s** %8, align 8
  %13 = getelementptr inbounds %struct.params_s, %struct.params_s* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load %struct.params_s*, %struct.params_s** %8, align 8
  %17 = getelementptr inbounds %struct.params_s, %struct.params_s* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.params_s*, %struct.params_s** %8, align 8
  %20 = getelementptr inbounds %struct.params_s, %struct.params_s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @xiph_PackHeaders(i32* %10, i8** %9, i32* %15, i32 %18, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @VLC_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %4
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = icmp eq i64 %27, %29
  %31 = zext i1 %30 to i32
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @free(i8* %32)
  %34 = call i32 @EXPECT_CLEANUP(i32 %31, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @memcmp(i32* %35, i8* %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @free(i8* %42)
  %44 = call i32 @EXPECT_CLEANUP(i32 %41, i32 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @free(i8* %45)
  br label %47

47:                                               ; preds = %26, %4
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @xiph_PackHeaders(i32*, i8**, i32*, i32, i32) #1

declare dso_local i32 @EXPECT_CLEANUP(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
