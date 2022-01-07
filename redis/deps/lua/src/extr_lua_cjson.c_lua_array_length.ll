; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_lua_array_length.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_lua_array_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@LUA_TNUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"excessively sparse array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32*)* @lua_array_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_array_length(i32* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @lua_pushnil(i32* %11)
  br label %13

13:                                               ; preds = %42, %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @lua_next(i32* %14, i32 -2)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @lua_type(i32* %18, i32 -2)
  %20 = load i64, i64* @LUA_TNUMBER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  %24 = call double @lua_tonumber(i32* %23, i32 -2)
  store double %24, double* %8, align 8
  %25 = fcmp une double %24, 0.000000e+00
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load double, double* %8, align 8
  %28 = call double @llvm.floor.f64(double %27)
  %29 = load double, double* %8, align 8
  %30 = fcmp oeq double %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load double, double* %8, align 8
  %33 = fcmp oge double %32, 1.000000e+00
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load double, double* %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sitofp i32 %36 to double
  %38 = fcmp ogt double %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load double, double* %8, align 8
  %41 = fptosi double %40 to i32
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @lua_pop(i32* %45, i32 1)
  br label %13

47:                                               ; preds = %31, %26
  br label %48

48:                                               ; preds = %47, %22, %17
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @lua_pop(i32* %49, i32 2)
  store i32 -1, i32* %4, align 4
  br label %83

51:                                               ; preds = %13
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = icmp sgt i32 %57, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @json_encode_exception(i32* %76, %struct.TYPE_4__* %77, i32* %78, i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %70
  store i32 -1, i32* %4, align 4
  br label %83

81:                                               ; preds = %64, %56, %51
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %80, %48
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local double @lua_tonumber(i32*, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @json_encode_exception(i32*, %struct.TYPE_4__*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
