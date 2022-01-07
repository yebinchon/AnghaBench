; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_jit.c_jitopt_param.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_jit.c_jitopt_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@JIT_P_STRING = common dso_local global i8* null, align 8
@JIT_P__MAX = common dso_local global i32 0, align 4
@JIT_P_hotloop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @jitopt_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jitopt_param(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** @JIT_P_STRING, align 8
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %89, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @JIT_P__MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %92

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @lua_assert(i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @strncmp(i8* %24, i8* %26, i64 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %84

30:                                               ; preds = %16
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 61
  br i1 %36, label %37, label %84

37:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %10, align 8
  br label %42

42:                                               ; preds = %54, %37
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sge i32 %45, 48
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sle i32 %50, 57
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ false, %42 ], [ %51, %47 ]
  br i1 %53, label %54, label %63

54:                                               ; preds = %52
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %55, 10
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %10, align 8
  %59 = load i8, i8* %57, align 1
  %60 = sext i8 %59 to i32
  %61 = sub nsw i32 %60, 48
  %62 = add nsw i32 %56, %61
  store i32 %62, i32* %9, align 4
  br label %42

63:                                               ; preds = %52
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %93

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @JIT_P_hotloop, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = call i32 @J2G(%struct.TYPE_4__* %80)
  %82 = call i32 @lj_dispatch_init_hotcount(i32 %81)
  br label %83

83:                                               ; preds = %79, %68
  store i32 1, i32* %3, align 4
  br label %93

84:                                               ; preds = %30, %16
  %85 = load i64, i64* %8, align 8
  %86 = add i64 1, %85
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 %86
  store i8* %88, i8** %6, align 8
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %12

92:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %83, %67
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @lj_dispatch_init_hotcount(i32) #1

declare dso_local i32 @J2G(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
