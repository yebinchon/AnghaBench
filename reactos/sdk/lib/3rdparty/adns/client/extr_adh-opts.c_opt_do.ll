; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-opts.c_opt_do.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-opts.c_opt_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optioninfo = type { i32, i32*, i32, i32 (%struct.optioninfo*, i8*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opt_do(%struct.optioninfo* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.optioninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.optioninfo* %0, %struct.optioninfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.optioninfo*, %struct.optioninfo** %5, align 8
  %10 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %57 [
    i32 132, label %12
    i32 128, label %25
    i32 131, label %43
    i32 130, label %43
    i32 129, label %43
  ]

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.optioninfo*, %struct.optioninfo** %5, align 8
  %23 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32 %21, i32* %24, align 4
  br label %59

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.optioninfo*, %struct.optioninfo** %5, align 8
  %35 = call i32 @noninvert(%struct.optioninfo* %34)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.optioninfo*, %struct.optioninfo** %5, align 8
  %38 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.optioninfo*, %struct.optioninfo** %5, align 8
  %41 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32 %39, i32* %42, align 4
  br label %59

43:                                               ; preds = %4, %4, %4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.optioninfo*, %struct.optioninfo** %5, align 8
  %48 = call i32 @noninvert(%struct.optioninfo* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.optioninfo*, %struct.optioninfo** %5, align 8
  %51 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %50, i32 0, i32 3
  %52 = load i32 (%struct.optioninfo*, i8*, i8*)*, i32 (%struct.optioninfo*, i8*, i8*)** %51, align 8
  %53 = load %struct.optioninfo*, %struct.optioninfo** %5, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 %52(%struct.optioninfo* %53, i8* %54, i8* %55)
  br label %59

57:                                               ; preds = %4
  %58 = call i32 (...) @abort() #3
  unreachable

59:                                               ; preds = %49, %36, %12
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @noninvert(%struct.optioninfo*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
