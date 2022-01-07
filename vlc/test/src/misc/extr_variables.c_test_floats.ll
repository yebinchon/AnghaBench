; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_test_floats.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_test_floats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@VAR_COUNT = common dso_local global i32 0, align 4
@psz_var_name = common dso_local global i32* null, align 8
@VLC_VAR_FLOAT = common dso_local global i32 0, align 4
@var_value = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_floats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_floats(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @VAR_COUNT, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i32*, i32** %2, align 8
  %13 = load i32*, i32** @psz_var_name, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %19 = call i32 @var_Create(i32* %12, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %7

23:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @VAR_COUNT, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = call i64 (...) @rand()
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @var_value, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %29, i64* %34, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = load i32*, i32** @psz_var_name, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @var_value, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @var_SetFloat(i32* %35, i32 %40, i64 %46)
  br label %48

48:                                               ; preds = %28
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %24

51:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %73, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @VAR_COUNT, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load i32*, i32** %2, align 8
  %58 = load i32*, i32** @psz_var_name, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @var_GetFloat(i32* %57, i32 %62)
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @var_value, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %63, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  br label %73

73:                                               ; preds = %56
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %52

76:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %89, %76
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @VAR_COUNT, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i32*, i32** %2, align 8
  %83 = load i32*, i32** @psz_var_name, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @var_Destroy(i32* %82, i32 %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %77

92:                                               ; preds = %77
  ret void
}

declare dso_local i32 @var_Create(i32*, i32, i32) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @var_SetFloat(i32*, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @var_GetFloat(i32*, i32) #1

declare dso_local i32 @var_Destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
