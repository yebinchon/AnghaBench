; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_sds.h_sdsinclen.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_sds.h_sdsinclen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SDS_TYPE_MASK = common dso_local global i8 0, align 1
@SDS_TYPE_BITS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @sdsinclen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdsinclen(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 -1
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %5, align 1
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @SDS_TYPE_MASK, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  switch i32 %15, label %66 [
    i32 130, label %16
    i32 128, label %34
    i32 132, label %42
    i32 131, label %50
    i32 129, label %58
  ]

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %18, i8** %6, align 8
  %19 = load i8, i8* %5, align 1
  %20 = call i32 @SDS_TYPE_5_LEN(i8 zeroext %19)
  %21 = load i64, i64* %4, align 8
  %22 = trunc i64 %21 to i8
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %20, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %7, align 1
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @SDS_TYPE_BITS, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %27, %29
  %31 = or i32 130, %30
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %6, align 8
  store i8 %32, i8* %33, align 1
  br label %66

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i8*, i8** %3, align 8
  %38 = call %struct.TYPE_2__* @SDS_HDR(i32 8, i8* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %36
  store i32 %41, i32* %39, align 4
  br label %66

42:                                               ; preds = %2
  %43 = load i64, i64* %4, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i8*, i8** %3, align 8
  %46 = call %struct.TYPE_2__* @SDS_HDR(i32 16, i8* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %44
  store i32 %49, i32* %47, align 4
  br label %66

50:                                               ; preds = %2
  %51 = load i64, i64* %4, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i8*, i8** %3, align 8
  %54 = call %struct.TYPE_2__* @SDS_HDR(i32 32, i8* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %52
  store i32 %57, i32* %55, align 4
  br label %66

58:                                               ; preds = %2
  %59 = load i64, i64* %4, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i8*, i8** %3, align 8
  %62 = call %struct.TYPE_2__* @SDS_HDR(i32 64, i8* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %60
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %2, %58, %50, %42, %34, %16
  ret void
}

declare dso_local i32 @SDS_TYPE_5_LEN(i8 zeroext) #1

declare dso_local %struct.TYPE_2__* @SDS_HDR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
