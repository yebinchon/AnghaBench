; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_status_trim.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_status_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c", %s %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"suspended, started at\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"started at\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"completed at\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"  (%d%% trimmed%s)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"  (trim unsupported)\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"  (untrimmed)\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"  (trimming)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64)* @print_status_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_status_trim(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca %struct.tm, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %90

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 130
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 129
  br i1 %26, label %27, label %77

27:                                               ; preds = %22, %17, %12
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %77, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  store i32 100, i32* %9, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 129
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 100
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  %49 = sdiv i32 %44, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %40, %32
  %51 = call i32 @localtime_r(i32* %8, %struct.tm* %7)
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %53 = call i32 @strftime(i8* %52, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.tm* %7)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %72 [
    i32 128, label %57
    i32 130, label %62
    i32 129, label %67
  ]

57:                                               ; preds = %50
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %59 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %61 = call i32 @snprintf(i8* %58, i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* %60)
  br label %72

62:                                               ; preds = %50
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %64 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %66 = call i32 @snprintf(i8* %63, i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %64, i8* %65)
  br label %72

67:                                               ; preds = %50
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %69 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %71 = call i32 @snprintf(i8* %68, i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %50, %67, %62, %57
  %73 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* %9, align 4
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %76 = call i32 (i8*, ...) @printf(i8* %73, i32 %74, i8* %75)
  br label %89

77:                                               ; preds = %27, %22
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %84 = call i32 (i8*, ...) @printf(i8* %83)
  br label %88

85:                                               ; preds = %77
  %86 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %87 = call i32 (i8*, ...) @printf(i8* %86)
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %72
  br label %99

90:                                               ; preds = %2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 130
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @printf(i8* %96)
  br label %98

98:                                               ; preds = %95, %90
  br label %99

99:                                               ; preds = %98, %89
  ret void
}

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
