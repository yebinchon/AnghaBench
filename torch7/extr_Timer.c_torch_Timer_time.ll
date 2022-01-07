; ModuleID = '/home/carl/AnghaBench/torch7/extr_Timer.c_torch_Timer_time.c'
source_filename = "/home/carl/AnghaBench/torch7/extr_Timer.c_torch_Timer_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double, double, double, i64 }

@.str = private unnamed_addr constant [12 x i8] c"torch.Timer\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@ticksPerSecond = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @torch_Timer_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @torch_Timer_time(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.TYPE_3__* @luaT_checkudata(i32* %7, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = call double (...) @torch_Timer_realtime()
  %18 = fadd double %16, %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = fsub double %18, %21
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi double [ %22, %13 ], [ %26, %23 ]
  store double %28, double* %4, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load double, double* %35, align 8
  %37 = call double (...) @torch_Timer_usertime()
  %38 = fadd double %36, %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load double, double* %40, align 8
  %42 = fsub double %38, %41
  br label %47

43:                                               ; preds = %27
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  br label %47

47:                                               ; preds = %43, %33
  %48 = phi double [ %42, %33 ], [ %46, %43 ]
  store double %48, double* %5, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = load double, double* %55, align 8
  %57 = call double (...) @torch_Timer_systime()
  %58 = fadd double %56, %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load double, double* %60, align 8
  %62 = fsub double %58, %61
  br label %67

63:                                               ; preds = %47
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load double, double* %65, align 8
  br label %67

67:                                               ; preds = %63, %53
  %68 = phi double [ %62, %53 ], [ %66, %63 ]
  store double %68, double* %6, align 8
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @lua_createtable(i32* %69, i32 0, i32 3)
  %71 = load i32*, i32** %2, align 8
  %72 = load double, double* %4, align 8
  %73 = call i32 @lua_pushnumber(i32* %71, double %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @lua_setfield(i32* %74, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32*, i32** %2, align 8
  %77 = load double, double* %5, align 8
  %78 = call i32 @lua_pushnumber(i32* %76, double %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @lua_setfield(i32* %79, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32*, i32** %2, align 8
  %82 = load double, double* %6, align 8
  %83 = call i32 @lua_pushnumber(i32* %81, double %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @lua_setfield(i32* %84, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  ret i32 1
}

declare dso_local %struct.TYPE_3__* @luaT_checkudata(i32*, i32, i8*) #1

declare dso_local double @torch_Timer_realtime(...) #1

declare dso_local double @torch_Timer_usertime(...) #1

declare dso_local double @torch_Timer_systime(...) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, double) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
