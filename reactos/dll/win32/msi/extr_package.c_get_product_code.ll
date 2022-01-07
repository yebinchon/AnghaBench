; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_get_product_code.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_get_product_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@get_product_code.query = internal constant [62 x i8] c"SELECT `Value` FROM `Property` WHERE `Property`='ProductCode'\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @get_product_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_product_code(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* null, i8** %6, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @MSI_DatabaseOpenViewW(i32* %7, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @get_product_code.query, i64 0, i64 0), %struct.TYPE_10__** %4)
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = call i64 @MSI_ViewExecute(%struct.TYPE_10__* %13, i32 0)
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = call i32 @MSI_ViewClose(%struct.TYPE_10__* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = call i32 @msiobj_release(i32* %21)
  store i8* null, i8** %2, align 8
  br label %42

23:                                               ; preds = %12
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = call i64 @MSI_ViewFetch(%struct.TYPE_10__* %24, %struct.TYPE_9__** %5)
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = call i32 @MSI_RecordGetString(%struct.TYPE_9__* %29, i32 1)
  %31 = call i8* @strdupW(i32 %30)
  store i8* %31, i8** %6, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = call i32 @msiobj_release(i32* %33)
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = call i32 @MSI_ViewClose(%struct.TYPE_10__* %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = call i32 @msiobj_release(i32* %39)
  %41 = load i8*, i8** %6, align 8
  store i8* %41, i8** %2, align 8
  br label %42

42:                                               ; preds = %35, %17, %11
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

declare dso_local i64 @MSI_DatabaseOpenViewW(i32*, i8*, %struct.TYPE_10__**) #1

declare dso_local i64 @MSI_ViewExecute(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @MSI_ViewClose(%struct.TYPE_10__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @MSI_ViewFetch(%struct.TYPE_10__*, %struct.TYPE_9__**) #1

declare dso_local i8* @strdupW(i32) #1

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
