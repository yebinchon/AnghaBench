; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_load_extension.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_load_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i8*, i32, i32, i8*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"loading extension %s\0A\00", align 1
@INSTALLSTATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_10__*, i32*)* @load_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @load_extension(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call %struct.TYPE_11__* @msi_alloc_zero(i32 48)
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %66

12:                                               ; preds = %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 8
  %15 = call i32 @list_init(i32* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 7
  %20 = call i32 @list_add_tail(i32* %17, i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @msi_dup_record_field(i32* %21, i32 1)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 6
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @debugstr_w(i8* %27)
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @MSI_RecordGetString(i32* %30, i32 2)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @msi_get_loaded_component(%struct.TYPE_10__* %32, i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i8* @msi_dup_record_field(i32* %37, i32 3)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @load_given_progid(%struct.TYPE_10__* %41, i8* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @MSI_RecordGetString(i32* %48, i32 4)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @load_given_mime(%struct.TYPE_10__* %50, i32 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @MSI_RecordGetString(i32* %55, i32 5)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @msi_get_loaded_feature(%struct.TYPE_10__* %57, i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @INSTALLSTATE_UNKNOWN, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %3, align 8
  br label %66

66:                                               ; preds = %12, %11
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %67
}

declare dso_local %struct.TYPE_11__* @msi_alloc_zero(i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i8* @msi_dup_record_field(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @msi_get_loaded_component(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @load_given_progid(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @load_given_mime(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @msi_get_loaded_feature(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
