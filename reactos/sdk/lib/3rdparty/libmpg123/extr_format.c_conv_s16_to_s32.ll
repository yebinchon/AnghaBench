; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_format.c_conv_s16_to_s32.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_format.c_conv_s16_to_s32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outbuffer = type { i32, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bufsizeerr = common dso_local global i32 0, align 4
@S32_RESCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.outbuffer*)* @conv_s16_to_s32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conv_s16_to_s32(%struct.outbuffer* %0) #0 {
  %2 = alloca %struct.outbuffer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.outbuffer* %0, %struct.outbuffer** %2, align 8
  %7 = load %struct.outbuffer*, %struct.outbuffer** %2, align 8
  %8 = getelementptr inbounds %struct.outbuffer, %struct.outbuffer* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %4, align 8
  %11 = load %struct.outbuffer*, %struct.outbuffer** %2, align 8
  %12 = getelementptr inbounds %struct.outbuffer, %struct.outbuffer* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %5, align 8
  %15 = load %struct.outbuffer*, %struct.outbuffer** %2, align 8
  %16 = getelementptr inbounds %struct.outbuffer, %struct.outbuffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 4
  store i64 %19, i64* %6, align 8
  %20 = load %struct.outbuffer*, %struct.outbuffer** %2, align 8
  %21 = getelementptr inbounds %struct.outbuffer, %struct.outbuffer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = mul i64 %23, 4
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @bufsizeerr, align 4
  %28 = call i32 @error1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %58

29:                                               ; preds = %1
  %30 = load i64, i64* %6, align 8
  %31 = sub i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %49, %29
  %33 = load i64, i64* %3, align 8
  %34 = icmp uge i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @S32_RESCALE, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, %43
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %35
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %3, align 8
  br label %32

52:                                               ; preds = %32
  %53 = load i64, i64* %6, align 8
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = load %struct.outbuffer*, %struct.outbuffer** %2, align 8
  %57 = getelementptr inbounds %struct.outbuffer, %struct.outbuffer* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %52, %26
  ret void
}

declare dso_local i32 @error1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
