; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_decompTest.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_decompTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@__const.decompTest.sf1 = private unnamed_addr constant %struct.TYPE_4__ { i32 1, i32 1 }, align 4
@TJSAMP_444 = common dso_local global i32 0, align 4
@TJSAMP_GRAY = common dso_local global i32 0, align 4
@yuv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompTest(i32 %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_4__*, align 8
  %22 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %23 = call %struct.TYPE_4__* @tjGetScalingFactors(i32* %20)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %21, align 8
  %24 = bitcast %struct.TYPE_4__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.TYPE_4__* @__const.decompTest.sf1 to i8*), i64 8, i1 false)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %9
  %28 = load i32, i32* %20, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %9
  %31 = call i32 (...) @_throwtj()
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @TJSAMP_444, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* @TJSAMP_GRAY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @yuv, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %40
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %65, %43
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %20, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i8*, i8** %16, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %59 = load i32, i32* %19, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = bitcast %struct.TYPE_4__* %61 to i64*
  %63 = load i64, i64* %62, align 4
  %64 = call i32 @_decompTest(i32 %49, i8* %50, i64 %51, i32 %52, i32 %53, i32 %54, i8* %55, i32 %56, i32 %57, i64 %63)
  br label %65

65:                                               ; preds = %48
  %66 = load i32, i32* %19, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %19, align 4
  br label %44

68:                                               ; preds = %44
  br label %82

69:                                               ; preds = %40, %36
  %70 = load i32, i32* %10, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i8*, i8** %16, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %18, align 4
  %79 = bitcast %struct.TYPE_4__* %22 to i64*
  %80 = load i64, i64* %79, align 4
  %81 = call i32 @_decompTest(i32 %70, i8* %71, i64 %72, i32 %73, i32 %74, i32 %75, i8* %76, i32 %77, i32 %78, i64 %80)
  br label %82

82:                                               ; preds = %69, %68
  br label %83

83:                                               ; preds = %82
  ret void
}

declare dso_local %struct.TYPE_4__* @tjGetScalingFactors(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_throwtj(...) #1

declare dso_local i32 @_decompTest(i32, i8*, i64, i32, i32, i32, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
