; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_acpi.c_basl_open.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_acpi.c_basl_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basl_fio = type { i64, i32, i32* }

@basl_stemplate = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@BHYVE_ASL_SUFFIX = common dso_local global i32 0, align 4
@basl_template = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.basl_fio*, i32)* @basl_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basl_open(%struct.basl_fio* %0, i32 %1) #0 {
  %3 = alloca %struct.basl_fio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.basl_fio* %0, %struct.basl_fio** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.basl_fio*, %struct.basl_fio** %3, align 8
  %10 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @basl_stemplate, align 4
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = call i32 @strlcpy(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.basl_fio*, %struct.basl_fio** %3, align 8
  %16 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BHYVE_ASL_SUFFIX, align 4
  %19 = call i32 @strlen(i32 %18)
  %20 = call i64 @mkstemps(i32 %17, i32 %19)
  %21 = load %struct.basl_fio*, %struct.basl_fio** %3, align 8
  %22 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %36

23:                                               ; preds = %2
  %24 = load %struct.basl_fio*, %struct.basl_fio** %3, align 8
  %25 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @basl_template, align 4
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = call i32 @strlcpy(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.basl_fio*, %struct.basl_fio** %3, align 8
  %31 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @mkstemp(i32 %32)
  %34 = load %struct.basl_fio*, %struct.basl_fio** %3, align 8
  %35 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %23, %8
  %37 = load %struct.basl_fio*, %struct.basl_fio** %3, align 8
  %38 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.basl_fio*, %struct.basl_fio** %3, align 8
  %43 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32* @fdopen(i64 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.basl_fio*, %struct.basl_fio** %3, align 8
  %47 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.basl_fio*, %struct.basl_fio** %3, align 8
  %49 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %41
  %53 = load %struct.basl_fio*, %struct.basl_fio** %3, align 8
  %54 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @unlink(i32 %55)
  %57 = load %struct.basl_fio*, %struct.basl_fio** %3, align 8
  %58 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @close(i64 %59)
  br label %61

61:                                               ; preds = %52, %41
  br label %63

62:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @mkstemps(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @mkstemp(i32) #1

declare dso_local i32* @fdopen(i64, i8*) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
