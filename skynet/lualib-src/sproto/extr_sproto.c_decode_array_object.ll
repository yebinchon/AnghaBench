; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_decode_array_object.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_decode_array_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto_arg = type { i32, i32, i32* }

@SIZEOF_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64 (%struct.sproto_arg*)*, %struct.sproto_arg*, i32*, i32)* @decode_array_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_array_object(i64 (%struct.sproto_arg*)* %0, %struct.sproto_arg* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64 (%struct.sproto_arg*)*, align 8
  %7 = alloca %struct.sproto_arg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 (%struct.sproto_arg*)* %0, i64 (%struct.sproto_arg*)** %6, align 8
  store %struct.sproto_arg* %1, %struct.sproto_arg** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %12

12:                                               ; preds = %49, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %12
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SIZEOF_LENGTH, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %60

20:                                               ; preds = %15
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @todword(i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @SIZEOF_LENGTH, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %8, align 8
  %27 = load i32, i32* @SIZEOF_LENGTH, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %60

34:                                               ; preds = %20
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %37 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %40 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %43 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i64 (%struct.sproto_arg*)*, i64 (%struct.sproto_arg*)** %6, align 8
  %45 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %46 = call i64 %44(%struct.sproto_arg* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %60

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %12

59:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %48, %33, %19
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @todword(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
