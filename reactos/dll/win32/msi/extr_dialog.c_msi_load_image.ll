; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_load_image.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_load_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%p %s %u %u %08x\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i64, i64, i64, i64)* @msi_load_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @msi_load_image(i32* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* null, i32** %15, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @debugstr_w(i32 %19)
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %13, align 8
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %18, i32 %20, i64 %21, i64 %22, i64 %23)
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @msi_create_temp_file(i32* %25)
  store i32 %26, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %59

29:                                               ; preds = %6
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.TYPE_4__* @msi_get_binary_record(i32* %30, i32 %31)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %14, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call i64 @MSI_RecordStreamToFile(%struct.TYPE_4__* %36, i32 2, i32 %37)
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* %16, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i32* @LoadImageW(i32 0, i32 %43, i64 %44, i64 %45, i64 %46, i64 %47)
  store i32* %48, i32** %15, align 8
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @msiobj_release(i32* %51)
  br label %53

53:                                               ; preds = %49, %29
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @DeleteFileW(i32 %54)
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @msi_free(i32 %56)
  %58 = load i32*, i32** %15, align 8
  store i32* %58, i32** %7, align 8
  br label %59

59:                                               ; preds = %53, %28
  %60 = load i32*, i32** %7, align 8
  ret i32* %60
}

declare dso_local i32 @TRACE(i8*, i32*, i32, i64, i64, i64) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @msi_create_temp_file(i32*) #1

declare dso_local %struct.TYPE_4__* @msi_get_binary_record(i32*, i32) #1

declare dso_local i64 @MSI_RecordStreamToFile(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32* @LoadImageW(i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i32 @DeleteFileW(i32) #1

declare dso_local i32 @msi_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
