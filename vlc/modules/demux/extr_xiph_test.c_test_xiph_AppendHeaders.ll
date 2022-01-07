; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_xiph_test.c_test_xiph_AppendHeaders.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_xiph_test.c_test_xiph_AppendHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params_s = type { i32, i64, i32*, i32* }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64, %struct.params_s*)* @test_xiph_AppendHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_xiph_AppendHeaders(i8* %0, i32* %1, i64 %2, %struct.params_s* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.params_s*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.params_s* %3, %struct.params_s** %8, align 8
  %10 = load %struct.params_s*, %struct.params_s** %8, align 8
  %11 = getelementptr inbounds %struct.params_s, %struct.params_s* %10, i32 0, i32 1
  %12 = load %struct.params_s*, %struct.params_s** %8, align 8
  %13 = getelementptr inbounds %struct.params_s, %struct.params_s* %12, i32 0, i32 0
  %14 = load %struct.params_s*, %struct.params_s** %8, align 8
  %15 = getelementptr inbounds %struct.params_s, %struct.params_s* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.params_s*, %struct.params_s** %8, align 8
  %20 = getelementptr inbounds %struct.params_s, %struct.params_s* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @xiph_AppendHeaders(i64* %11, i32* %13, i32 %18, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @VLC_SUCCESS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.params_s*, %struct.params_s** %8, align 8
  %31 = getelementptr inbounds %struct.params_s, %struct.params_s* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = zext i32 %33 to i64
  %35 = icmp eq i64 %29, %34
  %36 = zext i1 %35 to i32
  %37 = load %struct.params_s*, %struct.params_s** %8, align 8
  %38 = getelementptr inbounds %struct.params_s, %struct.params_s* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @free(i32 %39)
  %41 = call i32 @EXPECT_CLEANUP(i32 %36, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.params_s*, %struct.params_s** %8, align 8
  %44 = getelementptr inbounds %struct.params_s, %struct.params_s* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.params_s*, %struct.params_s** %8, align 8
  %47 = getelementptr inbounds %struct.params_s, %struct.params_s* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @memcmp(i32* %42, i32 %45, i64 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.params_s*, %struct.params_s** %8, align 8
  %54 = getelementptr inbounds %struct.params_s, %struct.params_s* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @free(i32 %55)
  %57 = call i32 @EXPECT_CLEANUP(i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %28, %4
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @xiph_AppendHeaders(i64*, i32*, i32, i32) #1

declare dso_local i32 @EXPECT_CLEANUP(i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @memcmp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
