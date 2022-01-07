; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_BMK_print_cLevelEntry.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_BMK_print_cLevelEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i32* }

@NB_LEVELS_TRACKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"   {\00", align 1
@strt_ind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@MB_UNIT = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c" },   /* level %2i:  R=%5.3f at %5.1f MB/s - %5.1f MB/s */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, %struct.TYPE_8__*, i64)* @BMK_print_cLevelEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BMK_print_cLevelEntry(i32* %0, i32 %1, i32* %2, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32* %2, i32** %16, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %4, i64* %9, align 8
  store i32 1, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @NB_LEVELS_TRACKED, align 4
  %23 = icmp sle i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32* @cParamUnsetMin(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32* %28, i32** %29, align 8
  %30 = bitcast %struct.TYPE_7__* %6 to i8*
  %31 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %34

34:                                               ; preds = %53, %5
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @strt_ind, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @displayParamVal(i32* %45, i64 %46, i32 %51, i32 3)
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %44
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %34

56:                                               ; preds = %34
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i64, i64* %9, align 8
  %62 = uitofp i64 %61 to double
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %62, %65
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %60
  %69 = phi double [ %66, %60 ], [ 0.000000e+00, %67 ]
  store double %69, double* %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = sitofp i64 %71 to double
  %73 = load double, double* @MB_UNIT, align 8
  %74 = fdiv double %72, %73
  store double %74, double* %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sitofp i64 %76 to double
  %78 = load double, double* @MB_UNIT, align 8
  %79 = fdiv double %77, %78
  store double %79, double* %15, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load double, double* %13, align 8
  %83 = load double, double* %14, align 8
  %84 = load double, double* %15, align 8
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %81, double %82, double %83, double %84)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @cParamUnsetMin(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @displayParamVal(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
