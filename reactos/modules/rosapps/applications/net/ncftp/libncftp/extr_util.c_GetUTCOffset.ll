; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_util.c_GetUTCOffset.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_util.c_GetUTCOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @GetUTCOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetUTCOffset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 8
  %6 = alloca %struct.tm, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = call i32 @ZERO(%struct.tm* byval(%struct.tm) align 8 %5)
  %12 = call i32 @ZERO(%struct.tm* byval(%struct.tm) align 8 %6)
  store i64 0, i64* %10, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i32 94, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  store i32 12, i32* %18, align 4
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  store i32 -1, i32* %19, align 4
  %20 = call i64 @mktime(%struct.tm* %5)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, -1
  br i1 %22, label %23, label %50

23:                                               ; preds = %2
  %24 = call %struct.tm* @gmtime(i64* %8)
  store %struct.tm* %24, %struct.tm** %7, align 8
  %25 = load %struct.tm*, %struct.tm** %7, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.tm*, %struct.tm** %7, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.tm*, %struct.tm** %7, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.tm*, %struct.tm** %7, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  store i32 -1, i32* %41, align 4
  %42 = call i64 @mktime(%struct.tm* %6)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %23
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %45, %23
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i64, i64* %10, align 8
  ret i64 %51
}

declare dso_local i32 @ZERO(%struct.tm* byval(%struct.tm) align 8) #1

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local %struct.tm* @gmtime(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
