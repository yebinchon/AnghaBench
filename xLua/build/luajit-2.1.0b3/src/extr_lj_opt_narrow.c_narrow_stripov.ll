; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_narrow.c_narrow_stripov.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_narrow.c_narrow_stripov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IR_ADDOV = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i32 0, align 4
@IRCONV_DSTMASK = common dso_local global i32 0, align 4
@IRCONV_DSH = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i64 0, align 8
@IRCONV_SEXT = common dso_local global i32 0, align 4
@IR_CONV = common dso_local global i32 0, align 4
@IRT_INTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @narrow_stripov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @narrow_stripov(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @tref_ref(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call %struct.TYPE_5__* @IR(i32 %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %11, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @IR_ADDOV, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %87

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %87

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.TYPE_6__* @narrow_bpc_get(i32* %31, i32 %32, i32 %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %13, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_5__* @IR(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @irt_t(i32 %46)
  %48 = call i32 @TREF(i32 %40, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %111

49:                                               ; preds = %30
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @narrow_stripov(i32* %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @narrow_stripov(i32* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @IR_ADDOV, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* @IR_ADD, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @IRCONV_DSTMASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @IRCONV_DSH, align 4
  %75 = ashr i32 %73, %74
  %76 = call i32 @IRT(i32 %70, i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @emitir(i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @tref_ref(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @narrow_bpc_set(i32* %80, i32 %81, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %49
  br label %109

87:                                               ; preds = %26, %4
  %88 = load i64, i64* @LJ_64, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @IRCONV_SEXT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @irt_is64(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @IR_CONV, align 4
  %103 = load i32, i32* @IRT_INTP, align 4
  %104 = call i32 @IRT(i32 %102, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @emitir(i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %101, %95, %90, %87
  br label %109

109:                                              ; preds = %108, %86
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %37
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @tref_ref(i32) #1

declare dso_local %struct.TYPE_5__* @IR(i32) #1

declare dso_local %struct.TYPE_6__* @narrow_bpc_get(i32*, i32, i32) #1

declare dso_local i32 @TREF(i32, i32) #1

declare dso_local i32 @irt_t(i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @narrow_bpc_set(i32*, i32, i32, i32) #1

declare dso_local i32 @irt_is64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
