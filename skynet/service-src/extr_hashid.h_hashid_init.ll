; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_hashid.h_hashid_init.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_hashid.h_hashid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashid = type { i32, i32, i8*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashid*, i32)* @hashid_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashid_init(%struct.hashid* %0, i32 %1) #0 {
  %3 = alloca %struct.hashid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hashid* %0, %struct.hashid** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 16, i32* %6, align 4
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 2
  store i32 %13, i32* %6, align 4
  br label %7

14:                                               ; preds = %7
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load %struct.hashid*, %struct.hashid** %3, align 8
  %18 = getelementptr inbounds %struct.hashid, %struct.hashid* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.hashid*, %struct.hashid** %3, align 8
  %21 = getelementptr inbounds %struct.hashid, %struct.hashid* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hashid*, %struct.hashid** %3, align 8
  %23 = getelementptr inbounds %struct.hashid, %struct.hashid* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i8* @skynet_malloc(i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_2__*
  %30 = load %struct.hashid*, %struct.hashid** %3, align 8
  %31 = getelementptr inbounds %struct.hashid, %struct.hashid* %30, i32 0, i32 3
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %51, %14
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.hashid*, %struct.hashid** %3, align 8
  %38 = getelementptr inbounds %struct.hashid, %struct.hashid* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load %struct.hashid*, %struct.hashid** %3, align 8
  %45 = getelementptr inbounds %struct.hashid, %struct.hashid* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %32

54:                                               ; preds = %32
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 8
  %58 = trunc i64 %57 to i32
  %59 = call i8* @skynet_malloc(i32 %58)
  %60 = load %struct.hashid*, %struct.hashid** %3, align 8
  %61 = getelementptr inbounds %struct.hashid, %struct.hashid* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.hashid*, %struct.hashid** %3, align 8
  %63 = getelementptr inbounds %struct.hashid, %struct.hashid* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memset(i8* %64, i32 0, i32 %68)
  ret void
}

declare dso_local i8* @skynet_malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
