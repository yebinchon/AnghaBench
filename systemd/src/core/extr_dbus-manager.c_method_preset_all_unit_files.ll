; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_preset_all_unit_files.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_preset_all_unit_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sbb\00", align 1
@UNIT_FILE_PRESET_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*)* @method_preset_all_unit_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_preset_all_unit_files(%struct.TYPE_11__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %10, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = call i32 @assert(%struct.TYPE_11__* %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = call i32 @assert(%struct.TYPE_11__* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @mac_selinux_access_check(%struct.TYPE_11__* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %4, align 4
  br label %90

30:                                               ; preds = %3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = call i32 @sd_bus_message_read(%struct.TYPE_11__* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %12, i32* %15, i32* %14)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %4, align 4
  br label %90

37:                                               ; preds = %30
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @unit_file_bools_to_flags(i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = call i64 @isempty(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i64, i64* @UNIT_FILE_PRESET_FULL, align 8
  store i64 %45, i64* %11, align 8
  br label %55

46:                                               ; preds = %37
  %47 = load i8*, i8** %12, align 8
  %48 = call i64 @unit_file_preset_mode_from_string(i8* %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %90

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @bus_verify_manage_unit_files_async(%struct.TYPE_11__* %56, %struct.TYPE_11__* %57, i32* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %4, align 4
  br label %90

64:                                               ; preds = %55
  %65 = load i32, i32* %16, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* %4, align 4
  br label %90

68:                                               ; preds = %64
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @unit_file_preset_all(i32 %71, i32 %72, i32* null, i64 %73, i32** %8, i64* %9)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @install_error(i32* %78, i32 %79, i32* %80, i64 %81)
  store i32 %82, i32* %4, align 4
  br label %90

83:                                               ; preds = %68
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @reply_unit_file_changes_and_free(%struct.TYPE_11__* %84, %struct.TYPE_11__* %85, i32 -1, i32* %86, i64 %87, i32* %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %83, %77, %67, %62, %51, %35, %28
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @mac_selinux_access_check(%struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_11__*, i8*, i8**, i32*, i32*) #1

declare dso_local i32 @unit_file_bools_to_flags(i32, i32) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @unit_file_preset_mode_from_string(i8*) #1

declare dso_local i32 @bus_verify_manage_unit_files_async(%struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @unit_file_preset_all(i32, i32, i32*, i64, i32**, i64*) #1

declare dso_local i32 @install_error(i32*, i32, i32*, i64) #1

declare dso_local i32 @reply_unit_file_changes_and_free(%struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
