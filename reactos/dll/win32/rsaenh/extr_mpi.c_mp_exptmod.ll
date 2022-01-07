; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_exptmod.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_exptmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }

@MP_NEG = common dso_local global i64 0, align 8
@MP_VAL = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_exptmod(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca %struct.TYPE_24__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %9, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MP_NEG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @MP_VAL, align 4
  store i32 %20, i32* %5, align 4
  br label %80

21:                                               ; preds = %4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MP_NEG, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  %28 = call i32 @mp_init(%struct.TYPE_24__* %11)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* @MP_OKAY, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  br label %80

33:                                               ; preds = %27
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %36 = call i32 @mp_invmod(%struct.TYPE_24__* %34, %struct.TYPE_24__* %35, %struct.TYPE_24__* %11)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* @MP_OKAY, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = call i32 @mp_clear(%struct.TYPE_24__* %11)
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %5, align 4
  br label %80

42:                                               ; preds = %33
  %43 = call i32 @mp_init(%struct.TYPE_24__* %12)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* @MP_OKAY, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = call i32 @mp_clear(%struct.TYPE_24__* %11)
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %5, align 4
  br label %80

49:                                               ; preds = %42
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %51 = call i32 @mp_abs(%struct.TYPE_24__* %50, %struct.TYPE_24__* %12)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* @MP_OKAY, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = call i32 @mp_clear_multi(%struct.TYPE_24__* %11, %struct.TYPE_24__* %12, i32* null)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %5, align 4
  br label %80

57:                                               ; preds = %49
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %60 = call i32 @mp_exptmod(%struct.TYPE_24__* %11, %struct.TYPE_24__* %12, %struct.TYPE_24__* %58, %struct.TYPE_24__* %59)
  store i32 %60, i32* %13, align 4
  %61 = call i32 @mp_clear_multi(%struct.TYPE_24__* %11, %struct.TYPE_24__* %12, i32* null)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %80

63:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %65 = call i32 @mp_isodd(%struct.TYPE_24__* %64)
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @mp_exptmod_fast(%struct.TYPE_24__* %68, %struct.TYPE_24__* %69, %struct.TYPE_24__* %70, %struct.TYPE_24__* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %80

74:                                               ; preds = %63
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %79 = call i32 @s_mp_exptmod(%struct.TYPE_24__* %75, %struct.TYPE_24__* %76, %struct.TYPE_24__* %77, %struct.TYPE_24__* %78)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %74, %67, %57, %54, %46, %39, %31, %19
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @mp_init(%struct.TYPE_24__*) #1

declare dso_local i32 @mp_invmod(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @mp_clear(%struct.TYPE_24__*) #1

declare dso_local i32 @mp_abs(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @mp_clear_multi(%struct.TYPE_24__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @mp_isodd(%struct.TYPE_24__*) #1

declare dso_local i32 @mp_exptmod_fast(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @s_mp_exptmod(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
