; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_msi_get_error_message.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_msi_get_error_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@msi_get_error_message.query = internal constant [49 x i8] c"SELECT `Message` FROM `Error` WHERE `Error` = %i\00", align 16
@msi_hInstance = common dso_local global i32 0, align 4
@IDS_ERROR_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @msi_get_error_message(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_4__* @MSI_QueryGetRecord(i32* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @msi_get_error_message.query, i64 0, i64 0), i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = call i32* @msi_dup_record_field(%struct.TYPE_4__* %13, i32 1)
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @msiobj_release(i32* %16)
  br label %50

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 2000
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load i32, i32* @msi_hInstance, align 4
  %23 = load i64, i64* @IDS_ERROR_BASE, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = bitcast i32** %6 to i32*
  %28 = call i32 @LoadStringW(i32 %22, i64 %26, i32* %27, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = call i32* @msi_alloc(i32 %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32, i32* @msi_hInstance, align 4
  %39 = load i64, i64* @IDS_ERROR_BASE, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @LoadStringW(i32 %38, i64 %42, i32* %43, i32 %45)
  br label %48

47:                                               ; preds = %21
  store i32* null, i32** %6, align 8
  br label %48

48:                                               ; preds = %47, %31
  br label %49

49:                                               ; preds = %48, %18
  br label %50

50:                                               ; preds = %49, %12
  %51 = load i32*, i32** %6, align 8
  ret i32* %51
}

declare dso_local %struct.TYPE_4__* @MSI_QueryGetRecord(i32*, i8*, i32) #1

declare dso_local i32* @msi_dup_record_field(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i32 @LoadStringW(i32, i64, i32*, i32) #1

declare dso_local i32* @msi_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
