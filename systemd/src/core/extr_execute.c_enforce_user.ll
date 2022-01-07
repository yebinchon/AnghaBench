; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_execute.c_enforce_user.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_execute.c_enforce_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@SECURE_KEEP_CAPS = common dso_local global i32 0, align 4
@PR_GET_SECUREBITS = common dso_local global i32 0, align 4
@PR_SET_SECUREBITS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @enforce_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enforce_user(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_4__* %7)
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @uid_is_valid(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SECURE_KEEP_CAPS, align 4
  %26 = shl i32 1, %25
  %27 = or i32 %24, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @PR_GET_SECUREBITS, align 4
  %29 = call i64 (i32, ...) @prctl(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %21
  %34 = load i32, i32* @PR_SET_SECUREBITS, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 (i32, ...) @prctl(i32 %34, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @errno, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %54

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %21
  br label %43

43:                                               ; preds = %42, %18
  br label %44

44:                                               ; preds = %43, %13
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @setresuid(i64 %45, i64 %46, i64 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @errno, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %38, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @uid_is_valid(i64) #1

declare dso_local i64 @prctl(i32, ...) #1

declare dso_local i64 @setresuid(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
