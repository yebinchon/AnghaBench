; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dswstate.c_AcpiDsObjStackPopAndDelete.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dswstate.c_AcpiDsObjStackPopAndDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32** }

@DsObjStackPopAndDelete = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Count=%X State=%p #Ops=%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDsObjStackPopAndDelete(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i32, i32* @DsObjStackPopAndDelete, align 4
  %8 = call i32 @ACPI_FUNCTION_NAME(i32 %7)
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %63

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = sub i64 %13, 1
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %51, %12
  %16 = load i64, i64* %5, align 8
  %17 = icmp uge i64 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %15
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %63

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %24
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @AcpiUtRemoveReference(i32* %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %37, %24
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %5, align 8
  br label %15

54:                                               ; preds = %15
  %55 = load i32, i32* @ACPI_DB_EXEC, align 4
  %56 = load i64, i64* %3, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @ACPI_DEBUG_PRINT(i32 %61)
  br label %63

63:                                               ; preds = %54, %23, %11
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
