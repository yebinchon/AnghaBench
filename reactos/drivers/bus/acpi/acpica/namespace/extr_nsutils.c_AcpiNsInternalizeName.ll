; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsutils.c_AcpiNsInternalizeName.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsutils.c_AcpiNsInternalizeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 }

@NsInternalizeName = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiNsInternalizeName(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @NsInternalizeName, align 4
  %10 = call i32 @ACPI_FUNCTION_TRACE(i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i8**, i8*** %5, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %13, %2
  %22 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %23 = call i32 @return_ACPI_STATUS(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = call i32 @AcpiNsGetInternalNameLength(%struct.TYPE_4__* %7)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @ACPI_ALLOCATE_ZEROED(i32 %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @AE_NO_MEMORY, align 4
  %35 = call i32 @return_ACPI_STATUS(i32 %34)
  br label %36

36:                                               ; preds = %33, %24
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = call i32 @AcpiNsBuildInternalName(%struct.TYPE_4__* %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @ACPI_FREE(i8* %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @return_ACPI_STATUS(i32 %46)
  br label %48

48:                                               ; preds = %43, %36
  %49 = load i8*, i8** %6, align 8
  %50 = load i8**, i8*** %5, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* @AE_OK, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiNsGetInternalNameLength(%struct.TYPE_4__*) #1

declare dso_local i8* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @AcpiNsBuildInternalName(%struct.TYPE_4__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
