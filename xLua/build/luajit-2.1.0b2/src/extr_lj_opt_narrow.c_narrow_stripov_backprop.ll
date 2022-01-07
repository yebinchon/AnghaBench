; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_narrow.c_narrow_stripov_backprop.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_narrow.c_narrow_stripov_backprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@IR_ADDOV = common dso_local global i64 0, align 8
@IR_SUBOV = common dso_local global i64 0, align 8
@IR_MULOV = common dso_local global i64 0, align 8
@IRCONV_CONVMASK = common dso_local global i32 0, align 4
@IRCONV_ANY = common dso_local global i32 0, align 4
@IRCONV_TOBIT = common dso_local global i32 0, align 4
@NARROW_MAX_BACKPROP = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i64 0, align 8
@IRT_INT = common dso_local global i32 0, align 4
@NARROW_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @narrow_stripov_backprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @narrow_stripov_backprop(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_8__* @IR(i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IR_ADDOV, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %41, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IR_SUBOV, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IR_MULOV, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %120

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IRCONV_CONVMASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @IRCONV_ANY, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %120

41:                                               ; preds = %33, %21, %3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IRCONV_TOBIT, align 4
  %47 = call %struct.TYPE_9__* @narrow_bpc_get(i32* %44, i32 %45, i32 %46)
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %9, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %119

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @NARROW_MAX_BACKPROP, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %118

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ult i32* %62, %65
  br i1 %66, label %67, label %118

67:                                               ; preds = %59
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %10, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  call void @narrow_stripov_backprop(%struct.TYPE_7__* %71, i32 %74, i32 %75)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ult i32* %78, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %67
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  call void @narrow_stripov_backprop(%struct.TYPE_7__* %84, i32 %87, i32 %88)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ult i32* %91, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %83
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IR_ADDOV, align 8
  %101 = sub nsw i64 %99, %100
  %102 = load i64, i64* @IR_ADD, align 8
  %103 = add nsw i64 %101, %102
  %104 = load i32, i32* @IRT_INT, align 4
  %105 = call i32 @IRT(i64 %103, i32 %104)
  %106 = load i32, i32* %5, align 4
  %107 = call i8* @NARROWINS(i32 %105, i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %110, align 8
  store i32 %108, i32* %111, align 4
  br label %129

113:                                              ; preds = %83
  br label %114

114:                                              ; preds = %113, %67
  %115 = load i32*, i32** %10, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store i32* %115, i32** %117, align 8
  br label %118

118:                                              ; preds = %114, %59, %54
  br label %119

119:                                              ; preds = %118, %50
  br label %120

120:                                              ; preds = %119, %33, %27
  %121 = load i32, i32* @NARROW_REF, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i8* @NARROWINS(i32 %121, i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %126, align 8
  store i32 %124, i32* %127, align 4
  br label %129

129:                                              ; preds = %120, %96
  ret void
}

declare dso_local %struct.TYPE_8__* @IR(i32) #1

declare dso_local %struct.TYPE_9__* @narrow_bpc_get(i32*, i32, i32) #1

declare dso_local i8* @NARROWINS(i32, i32) #1

declare dso_local i32 @IRT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
