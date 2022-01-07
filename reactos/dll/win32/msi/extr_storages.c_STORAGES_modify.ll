; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_storages.c_STORAGES_modify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_storages.c_STORAGES_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%p %d %p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%p %d %p - mode not implemented\0A\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*, i32, i32*, i32)* @STORAGES_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @STORAGES_modify(%struct.tagMSIVIEW* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.tagMSIVIEW*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.tagMSIVIEW* %10, i32 %11, i32* %12)
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %34 [
    i32 139, label %15
    i32 137, label %19
    i32 132, label %24
    i32 128, label %28
    i32 136, label %28
    i32 134, label %28
    i32 133, label %28
    i32 135, label %28
    i32 138, label %28
    i32 131, label %28
    i32 129, label %28
    i32 130, label %28
  ]

15:                                               ; preds = %4
  %16 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @storages_modify_assign(%struct.tagMSIVIEW* %16, i32* %17)
  store i32 %18, i32* %9, align 4
  br label %36

19:                                               ; preds = %4
  %20 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i32 @STORAGES_insert_row(%struct.tagMSIVIEW* %20, i32* %21, i32 -1, i32 %22)
  store i32 %23, i32* %9, align 4
  br label %36

24:                                               ; preds = %4
  %25 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @storages_modify_update(%struct.tagMSIVIEW* %25, i32* %26)
  store i32 %27, i32* %9, align 4
  br label %36

28:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4
  %29 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.tagMSIVIEW* %29, i32 %30, i32* %31)
  %33 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  store i32 %33, i32* %9, align 4
  br label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %28, %24, %19, %15
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @TRACE(i8*, %struct.tagMSIVIEW*, i32, i32*) #1

declare dso_local i32 @storages_modify_assign(%struct.tagMSIVIEW*, i32*) #1

declare dso_local i32 @STORAGES_insert_row(%struct.tagMSIVIEW*, i32*, i32, i32) #1

declare dso_local i32 @storages_modify_update(%struct.tagMSIVIEW*, i32*) #1

declare dso_local i32 @FIXME(i8*, %struct.tagMSIVIEW*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
