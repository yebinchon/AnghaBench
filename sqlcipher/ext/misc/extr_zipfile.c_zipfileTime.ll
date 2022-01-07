; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileTime.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*, double*)*, i32 (%struct.TYPE_5__*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @zipfileTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zipfileTime() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = call %struct.TYPE_5__* @sqlite3_vfs_find(i32 0)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %1, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sge i32 %8, 2
  br i1 %9, label %10, label %25

10:                                               ; preds = %0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*, i32*)** %12, align 8
  %14 = icmp ne i32 (%struct.TYPE_5__*, i32*)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*, i32*)** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = call i32 %18(%struct.TYPE_5__* %19, i32* %3)
  %21 = load i32, i32* %3, align 4
  %22 = sdiv i32 %21, 1000
  %23 = sub nsw i32 %22, 413362496
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %2, align 8
  br label %35

25:                                               ; preds = %10, %0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_5__*, double*)*, i32 (%struct.TYPE_5__*, double*)** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %30 = call i32 %28(%struct.TYPE_5__* %29, double* %4)
  %31 = load double, double* %4, align 8
  %32 = fsub double %31, 0x41429EC5C0000000
  %33 = fmul double %32, 8.640000e+04
  %34 = fptosi double %33 to i64
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %25, %15
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local %struct.TYPE_5__* @sqlite3_vfs_find(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
