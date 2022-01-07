; ModuleID = '/home/carl/AnghaBench/tig/src/extr_util.c_ident_compare.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_util.c_ident_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ident_compare(%struct.ident* %0, %struct.ident* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ident*, align 8
  %5 = alloca %struct.ident*, align 8
  store %struct.ident* %0, %struct.ident** %4, align 8
  store %struct.ident* %1, %struct.ident** %5, align 8
  %6 = load %struct.ident*, %struct.ident** %4, align 8
  %7 = icmp ne %struct.ident* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.ident*, %struct.ident** %5, align 8
  %10 = icmp ne %struct.ident* %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %8, %2
  %12 = load %struct.ident*, %struct.ident** %4, align 8
  %13 = icmp ne %struct.ident* %12, null
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.ident*, %struct.ident** %5, align 8
  %18 = icmp ne %struct.ident* %17, null
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = sub nsw i32 %16, %21
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %8
  %24 = load %struct.ident*, %struct.ident** %4, align 8
  %25 = getelementptr inbounds %struct.ident, %struct.ident* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.ident*, %struct.ident** %5, align 8
  %30 = getelementptr inbounds %struct.ident, %struct.ident* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.ident*, %struct.ident** %4, align 8
  %35 = getelementptr inbounds %struct.ident, %struct.ident* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load %struct.ident*, %struct.ident** %5, align 8
  %42 = getelementptr inbounds %struct.ident, %struct.ident* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = sub nsw i32 %40, %47
  store i32 %48, i32* %3, align 4
  br label %57

49:                                               ; preds = %28
  %50 = load %struct.ident*, %struct.ident** %4, align 8
  %51 = getelementptr inbounds %struct.ident, %struct.ident* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ident*, %struct.ident** %5, align 8
  %54 = getelementptr inbounds %struct.ident, %struct.ident* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strcmp(i32 %52, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %49, %33, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
