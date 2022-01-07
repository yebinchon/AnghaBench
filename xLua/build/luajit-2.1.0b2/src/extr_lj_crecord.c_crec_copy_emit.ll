; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_copy_emit.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_copy_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i32 }

@IR_ADD = common dso_local global i32 0, align 4
@IRT_PTR = common dso_local global i64 0, align 8
@IR_XLOAD = common dso_local global i32 0, align 4
@LJ_SOFTFP = common dso_local global i64 0, align 8
@IRT_NUM = common dso_local global i64 0, align 8
@CREC_COPY_REGWIN = common dso_local global i64 0, align 8
@IR_XSTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i64, i8*, i8*)* @crec_copy_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crec_copy_emit(i32* %0, %struct.TYPE_3__* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %113, %5
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %114

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @lj_ir_kintp(i32* %22, i32 %27)
  store i8* %28, i8** %14, align 8
  %29 = load i32, i32* @IR_ADD, align 4
  %30 = load i64, i64* @IRT_PTR, align 8
  %31 = call i32 @IRT(i32 %29, i64 %30)
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = call i8* @emitir(i32 %31, i8* %32, i8* %33)
  store i8* %34, i8** %15, align 8
  %35 = load i32, i32* @IR_XLOAD, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @IRT(i32 %35, i64 %40)
  %42 = load i8*, i8** %15, align 8
  %43 = call i8* @emitir(i32 %41, i8* %42, i8* null)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %43, i8** %47, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i8* %48, i8** %52, align 8
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* @LJ_SOFTFP, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %21
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IRT_NUM, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %57, %21
  %66 = phi i1 [ false, %21 ], [ %64, %57 ]
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 2, i32 1
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @CREC_COPY_REGWIN, align 8
  %74 = icmp uge i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %65
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %75, %65
  store i64 0, i64* %13, align 8
  br label %80

80:                                               ; preds = %109, %79
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %80
  %85 = load i32, i32* @IR_ADD, align 4
  %86 = load i64, i64* @IRT_PTR, align 8
  %87 = call i32 @IRT(i32 %85, i64 %86)
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @emitir(i32 %87, i8* %88, i8* %93)
  store i8* %94, i8** %16, align 8
  %95 = load i32, i32* @IR_XSTORE, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @IRT(i32 %95, i64 %100)
  %102 = load i8*, i8** %16, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @emitir(i32 %101, i8* %102, i8* %107)
  br label %109

109:                                              ; preds = %84
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %12, align 8
  br label %80

112:                                              ; preds = %80
  br label %113

113:                                              ; preds = %112, %75
  br label %17

114:                                              ; preds = %17
  ret void
}

declare dso_local i8* @lj_ir_kintp(i32*, i32) #1

declare dso_local i8* @emitir(i32, i8*, i8*) #1

declare dso_local i32 @IRT(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
