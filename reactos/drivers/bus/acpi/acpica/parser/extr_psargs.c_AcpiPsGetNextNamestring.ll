; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/parser/extr_psargs.c_AcpiPsGetNextNamestring.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/parser/extr_psargs.c_AcpiPsGetNextNamestring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@PsGetNextNamestring = common dso_local global i32 0, align 4
@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AcpiPsGetNextNamestring(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @PsGetNextNamestring, align 4
  %13 = call i32 @ACPI_FUNCTION_TRACE(i32 %12)
  br label %14

14:                                               ; preds = %26, %1
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ACPI_IS_ROOT_PREFIX(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ACPI_IS_PARENT_PREFIX(i32 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ true, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %5, align 8
  br label %14

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %57 [
    i32 0, label %32
    i32 129, label %40
    i32 128, label %47
  ]

32:                                               ; preds = %29
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = icmp eq i32* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32* null, i32** %4, align 8
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  br label %62

40:                                               ; preds = %29
  %41 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %42 = mul nsw i32 2, %41
  %43 = add nsw i32 1, %42
  %44 = load i32*, i32** %5, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %5, align 8
  br label %62

47:                                               ; preds = %29
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %52 = mul nsw i32 %50, %51
  %53 = add nsw i32 2, %52
  %54 = load i32*, i32** %5, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %5, align 8
  br label %62

57:                                               ; preds = %29
  %58 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %5, align 8
  br label %62

62:                                               ; preds = %57, %47, %40, %37
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = bitcast i32* %66 to i8*
  %68 = call i32 @return_PTR(i8* %67)
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @ACPI_IS_ROOT_PREFIX(i32) #1

declare dso_local i64 @ACPI_IS_PARENT_PREFIX(i32) #1

declare dso_local i32 @return_PTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
