; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_lcm.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_lcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }

@MP_OKAY = common dso_local global i32 0, align 4
@MP_LT = common dso_local global i64 0, align 8
@MP_ZPOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_lcm(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__, align 4
  %10 = alloca %struct.TYPE_20__, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %11 = call i32 @mp_init_multi(%struct.TYPE_20__* %9, %struct.TYPE_20__* %10, i32* null)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @MP_OKAY, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %56

16:                                               ; preds = %3
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %19 = call i32 @mp_gcd(%struct.TYPE_20__* %17, %struct.TYPE_20__* %18, %struct.TYPE_20__* %9)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @MP_OKAY, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %53

23:                                               ; preds = %16
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = call i64 @mp_cmp_mag(%struct.TYPE_20__* %24, %struct.TYPE_20__* %25)
  %27 = load i64, i64* @MP_LT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = call i32 @mp_div(%struct.TYPE_20__* %30, %struct.TYPE_20__* %9, %struct.TYPE_20__* %10, i32* null)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @MP_OKAY, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %53

35:                                               ; preds = %29
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %38 = call i32 @mp_mul(%struct.TYPE_20__* %36, %struct.TYPE_20__* %10, %struct.TYPE_20__* %37)
  store i32 %38, i32* %8, align 4
  br label %49

39:                                               ; preds = %23
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = call i32 @mp_div(%struct.TYPE_20__* %40, %struct.TYPE_20__* %9, %struct.TYPE_20__* %10, i32* null)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @MP_OKAY, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %53

45:                                               ; preds = %39
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = call i32 @mp_mul(%struct.TYPE_20__* %46, %struct.TYPE_20__* %10, %struct.TYPE_20__* %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %35
  %50 = load i32, i32* @MP_ZPOS, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %44, %34, %22
  %54 = call i32 @mp_clear_multi(%struct.TYPE_20__* %9, %struct.TYPE_20__* %10, i32* null)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @mp_init_multi(%struct.TYPE_20__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @mp_gcd(%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i64 @mp_cmp_mag(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @mp_div(%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @mp_mul(%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @mp_clear_multi(%struct.TYPE_20__*, %struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
