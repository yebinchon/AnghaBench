; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_i18n_atof.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_i18n_atof.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.dot9 = private unnamed_addr constant [14 x i8] c"999999.999999\00", align 1
@__const.main.comma9 = private unnamed_addr constant [14 x i8] c"999999,999999\00", align 1
@__const.main.sharp9 = private unnamed_addr constant [14 x i8] c"999999#999999\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"1.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"1,\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"1#\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [14 x i8], align 1
  %3 = alloca [14 x i8], align 1
  %4 = alloca [14 x i8], align 1
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %6 = bitcast [14 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.main.dot9, i32 0, i32 0), i64 14, i1 false)
  %7 = bitcast [14 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.main.comma9, i32 0, i32 0), i64 14, i1 false)
  %8 = bitcast [14 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.main.sharp9, i32 0, i32 0), i64 14, i1 false)
  %9 = call i32 @us_atof(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = sitofp i32 %9 to double
  %11 = fcmp oeq double %10, 0.000000e+00
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 @us_atof(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %15 = sitofp i32 %14 to double
  %16 = fcmp oeq double %15, 1.000000e+00
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i32 @us_atof(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %20 = sitofp i32 %19 to double
  %21 = fcmp oeq double %20, 1.000000e+00
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = call i32 @us_atof(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %25 = sitofp i32 %24 to double
  %26 = fcmp oeq double %25, 1.000000e+00
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 @us_atof(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %30 = sitofp i32 %29 to double
  %31 = fcmp oeq double %30, 1.000000e+00
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i64 0, i64 0
  %35 = call i32 @us_atof(i8* %34)
  %36 = sitofp i32 %35 to double
  %37 = fcmp oeq double %36, 0x412E847FFFFFDE72
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %41 = call i32 @us_atof(i8* %40)
  %42 = sitofp i32 %41 to double
  %43 = fcmp oeq double %42, 9.999990e+05
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %47 = call i32 @us_atof(i8* %46)
  %48 = sitofp i32 %47 to double
  %49 = fcmp oeq double %48, 9.999990e+05
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = call i32 @us_atof(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %53 = sitofp i32 %52 to double
  %54 = fcmp oeq double %53, 0.000000e+00
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i64 0, i64 0
  %58 = call i32 @us_strtod(i8* %57, i8** %5)
  %59 = sitofp i32 %58 to double
  %60 = fcmp oeq double %59, 0x412E847FFFFFDE72
  br i1 %60, label %61, label %66

61:                                               ; preds = %0
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br label %66

66:                                               ; preds = %61, %0
  %67 = phi i1 [ false, %0 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %71 = call i32 @us_strtod(i8* %70, i8** %5)
  %72 = sitofp i32 %71 to double
  %73 = fcmp oeq double %72, 9.999990e+05
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i8*, i8** %5, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 44
  br label %79

79:                                               ; preds = %74, %66
  %80 = phi i1 [ false, %66 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %84 = call i32 @us_strtod(i8* %83, i8** %5)
  %85 = sitofp i32 %84 to double
  %86 = fcmp oeq double %85, 9.999990e+05
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 35
  br label %92

92:                                               ; preds = %87, %79
  %93 = phi i1 [ false, %79 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @us_atof(i8*) #2

declare dso_local i32 @us_strtod(i8*, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
