; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdio.c_SizeToHumanReadable.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdio.c_SizeToHumanReadable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SizeToHumanReadable.str_size = internal global [32 x i8] zeroinitializer, align 16
@right_to_left_mode = common dso_local global i64 0, align 8
@LEFT_TO_RIGHT_MARK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@default_msg_table = common dso_local global i8** null, align 8
@msg_table = common dso_local global i8** null, align 8
@MAX_SIZE_SUFFIXES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s%d%s %s\00", align 1
@MSG_020 = common dso_local global i64 0, align 8
@MSG_000 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%0.0f%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%0.1f%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s%0.0f%s %s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s%0.1f%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SizeToHumanReadable(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i8**, align 8
  %13 = alloca double, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i64, i64* @right_to_left_mode, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @LEFT_TO_RIGHT_MARK, align 8
  br label %22

21:                                               ; preds = %16, %3
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i8* [ %20, %19 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %21 ]
  store i8* %23, i8** %8, align 8
  %24 = load i64, i64* %4, align 8
  %25 = sitofp i64 %24 to double
  store double %25, double* %9, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i8**, i8*** @default_msg_table, align 8
  br label %32

30:                                               ; preds = %22
  %31 = load i8**, i8*** @msg_table, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i8** [ %29, %28 ], [ %31, %30 ]
  store i8** %33, i8*** %12, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, double 1.000000e+03, double 1.024000e+03
  store double %37, double* %13, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %52, %32
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MAX_SIZE_SUFFIXES, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load double, double* %9, align 8
  %45 = load double, double* %13, align 8
  %46 = fcmp olt double %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %55

48:                                               ; preds = %43
  %49 = load double, double* %13, align 8
  %50 = load double, double* %9, align 8
  %51 = fdiv double %50, %49
  store double %51, double* %9, align 8
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %38

55:                                               ; preds = %47, %38
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = load double, double* %9, align 8
  %61 = fptosi double %60 to i32
  %62 = load i8*, i8** %8, align 8
  %63 = load i8**, i8*** %12, align 8
  %64 = load i64, i64* @MSG_020, align 8
  %65 = load i64, i64* @MSG_000, align 8
  %66 = sub i64 %64, %65
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i8*, i8*, ...) @static_sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @SizeToHumanReadable.str_size, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32 %61, i8* %62, i8* %68)
  br label %156

70:                                               ; preds = %55
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %132

73:                                               ; preds = %70
  %74 = load double, double* %9, align 8
  %75 = fcmp olt double %74, 8.000000e+00
  br i1 %75, label %76, label %101

76:                                               ; preds = %73
  %77 = load double, double* %9, align 8
  %78 = fmul double %77, 1.000000e+01
  %79 = load double, double* %9, align 8
  %80 = fadd double %79, 5.000000e-01
  %81 = call double @llvm.floor.f64(double %80)
  %82 = fmul double %81, 1.000000e+01
  %83 = fsub double %78, %82
  %84 = fptrunc double %83 to float
  %85 = call float @fabs(float %84)
  %86 = fpext float %85 to double
  %87 = fcmp olt double %86, 5.000000e-01
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %90 = load double, double* %9, align 8
  %91 = load i8**, i8*** %12, align 8
  %92 = load i64, i64* @MSG_020, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %92, %94
  %96 = load i64, i64* @MSG_000, align 8
  %97 = sub i64 %95, %96
  %98 = getelementptr inbounds i8*, i8** %91, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i8*, i8*, ...) @static_sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @SizeToHumanReadable.str_size, i64 0, i64 0), i8* %89, double %90, i8* %99)
  br label %131

101:                                              ; preds = %73
  %102 = load double, double* %9, align 8
  %103 = call i64 @upo2(double %102)
  %104 = sitofp i64 %103 to double
  store double %104, double* %10, align 8
  %105 = load double, double* %9, align 8
  %106 = load double, double* %10, align 8
  %107 = fdiv double %105, %106
  %108 = fsub double 1.000000e+00, %107
  %109 = fptrunc double %108 to float
  %110 = call float @fabs(float %109)
  %111 = fcmp olt float %110, 0x3FA99999A0000000
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = load double, double* %10, align 8
  br label %116

114:                                              ; preds = %101
  %115 = load double, double* %9, align 8
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi double [ %113, %112 ], [ %115, %114 ]
  store double %117, double* %11, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load double, double* %11, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i8**, i8*** %12, align 8
  %122 = load i64, i64* @MSG_020, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %122, %124
  %126 = load i64, i64* @MSG_000, align 8
  %127 = sub i64 %125, %126
  %128 = getelementptr inbounds i8*, i8** %121, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (i8*, i8*, ...) @static_sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @SizeToHumanReadable.str_size, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %118, double %119, i8* %120, i8* %129)
  br label %131

131:                                              ; preds = %116, %76
  br label %155

132:                                              ; preds = %70
  %133 = load double, double* %9, align 8
  %134 = fmul double %133, 1.000000e+01
  %135 = load double, double* %9, align 8
  %136 = call double @llvm.floor.f64(double %135)
  %137 = fmul double %136, 1.000000e+01
  %138 = fsub double %134, %137
  %139 = fcmp olt double %138, 5.000000e-01
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)
  %142 = load i8*, i8** %8, align 8
  %143 = load double, double* %9, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = load i8**, i8*** %12, align 8
  %146 = load i64, i64* @MSG_020, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = add i64 %146, %148
  %150 = load i64, i64* @MSG_000, align 8
  %151 = sub i64 %149, %150
  %152 = getelementptr inbounds i8*, i8** %145, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 (i8*, i8*, ...) @static_sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @SizeToHumanReadable.str_size, i64 0, i64 0), i8* %141, i8* %142, double %143, i8* %144, i8* %153)
  br label %155

155:                                              ; preds = %132, %131
  br label %156

156:                                              ; preds = %155, %58
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @SizeToHumanReadable.str_size, i64 0, i64 0)
}

declare dso_local i32 @static_sprintf(i8*, i8*, ...) #1

declare dso_local float @fabs(float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

declare dso_local i64 @upo2(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
