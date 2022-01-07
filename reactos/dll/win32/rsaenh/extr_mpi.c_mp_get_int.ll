; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_get_int.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@CHAR_BIT = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_get_int(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @CHAR_BIT, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = load i32, i32* @DIGIT_BIT, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = sub i64 %20, 1
  %22 = load i32, i32* @DIGIT_BIT, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %21, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @MIN(i64 %14, i32 %25)
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @DIGIT(%struct.TYPE_4__* %28, i32 %29)
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %35, %11
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @DIGIT_BIT, align 4
  %38 = zext i32 %37 to i64
  %39 = shl i64 %36, %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @DIGIT(%struct.TYPE_4__* %40, i32 %41)
  %43 = or i64 %39, %42
  store i64 %43, i64* %5, align 8
  br label %31

44:                                               ; preds = %31
  %45 = load i64, i64* %5, align 8
  %46 = and i64 %45, 4294967295
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %44, %10
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i64 @DIGIT(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
