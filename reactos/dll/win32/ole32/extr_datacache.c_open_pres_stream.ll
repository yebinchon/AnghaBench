; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_open_pres_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_open_pres_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STREAM_NUMBER_NOT_SET = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@STREAM_NUMBER_CONTENTS = common dso_local global i32 0, align 4
@CONTENTS = common dso_local global i32* null, align 8
@STGM_READ = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**)* @open_pres_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_pres_stream(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca [12 x i32], align 16
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %10 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  store i32 2, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 79, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 108, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 101, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 80, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 114, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 101, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 115, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %6, align 4
  %20 = sdiv i32 %19, 100
  %21 = srem i32 %20, 10
  %22 = add nsw i32 48, %21
  store i32 %22, i32* %18, align 4
  %23 = getelementptr inbounds i32, i32* %18, i64 1
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %24, 10
  %26 = srem i32 %25, 10
  %27 = add nsw i32 48, %26
  store i32 %27, i32* %23, align 4
  %28 = getelementptr inbounds i32, i32* %23, i64 1
  %29 = load i32, i32* %6, align 4
  %30 = srem i32 %29, 10
  %31 = add nsw i32 48, %30
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  store i32* %33, i32** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @STREAM_NUMBER_NOT_SET, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @E_FAIL, align 4
  store i32 %38, i32* %4, align 4
  br label %53

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @STREAM_NUMBER_CONTENTS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32*, i32** @CONTENTS, align 8
  store i32* %44, i32** %9, align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @STGM_READ, align 4
  %49 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %50 = or i32 %48, %49
  %51 = load i32**, i32*** %7, align 8
  %52 = call i32 @IStorage_OpenStream(i32* %46, i32* %47, i32* null, i32 %50, i32 0, i32** %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %37
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @IStorage_OpenStream(i32*, i32*, i32*, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
