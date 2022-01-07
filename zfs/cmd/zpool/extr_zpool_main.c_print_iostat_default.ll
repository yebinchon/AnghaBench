; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_iostat_default.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_iostat_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, double*, double* }
%struct.TYPE_7__ = type { i32, i64 }

@IOS_DEFAULT = common dso_local global i32 0, align 4
@ZFS_NICENUM_RAW = common dso_local global i32 0, align 4
@ZFS_NICENUM_1024 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\09%c\09%c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"  %*c  %*c\00", align 1
@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*, double)* @print_iostat_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_iostat_default(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, double %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store double %2, double* %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = load i32, i32* @IOS_DEFAULT, align 4
  %12 = call i32 @default_column_width(%struct.TYPE_7__* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ZFS_NICENUM_RAW, align 4
  store i32 %18, i32* %8, align 4
  store i8 48, i8* %9, align 1
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @ZFS_NICENUM_1024, align 4
  store i32 %20, i32* %8, align 4
  store i8 45, i8* %9, align 1
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8, i8* %9, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* %9, align 1
  %35 = call i32 (i8*, i32, i8, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %33, i8 signext %34)
  br label %43

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = load i8, i8* %9, align 1
  %39 = load i32, i32* %7, align 4
  %40 = load i8, i8* %9, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 (i8*, i32, i8, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %37, i8 signext %38, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %36, %31
  br label %67

44:                                               ; preds = %21
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @print_one_stat(i64 %47, i32 %48, i32 %49, i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @print_one_stat(i64 %60, i32 %61, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %44, %43
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load double*, double** %69, align 8
  %71 = load i64, i64* @ZIO_TYPE_READ, align 8
  %72 = getelementptr inbounds double, double* %70, i64 %71
  %73 = load double, double* %72, align 8
  %74 = load double, double* %6, align 8
  %75 = fmul double %73, %74
  %76 = fptosi double %75 to i64
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @print_one_stat(i64 %76, i32 %77, i32 %78, i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load double*, double** %84, align 8
  %86 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %87 = getelementptr inbounds double, double* %85, i64 %86
  %88 = load double, double* %87, align 8
  %89 = load double, double* %6, align 8
  %90 = fmul double %88, %89
  %91 = fptosi double %90 to i64
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @print_one_stat(i64 %91, i32 %92, i32 %93, i32 %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load double*, double** %99, align 8
  %101 = load i64, i64* @ZIO_TYPE_READ, align 8
  %102 = getelementptr inbounds double, double* %100, i64 %101
  %103 = load double, double* %102, align 8
  %104 = load double, double* %6, align 8
  %105 = fmul double %103, %104
  %106 = fptosi double %105 to i64
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @print_one_stat(i64 %106, i32 %107, i32 %108, i32 %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load double*, double** %114, align 8
  %116 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %117 = getelementptr inbounds double, double* %115, i64 %116
  %118 = load double, double* %117, align 8
  %119 = load double, double* %6, align 8
  %120 = fmul double %118, %119
  %121 = fptosi double %120 to i64
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @print_one_stat(i64 %121, i32 %122, i32 %123, i32 %126)
  ret void
}

declare dso_local i32 @default_column_width(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, ...) #1

declare dso_local i32 @print_one_stat(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
