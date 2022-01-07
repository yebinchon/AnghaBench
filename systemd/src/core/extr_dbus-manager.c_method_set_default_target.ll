; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_set_default_target.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_set_default_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@UNIT_FILE_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*)* @method_set_default_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_set_default_target(%struct.TYPE_11__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %10, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = call i32 @assert(%struct.TYPE_11__* %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %19 = call i32 @assert(%struct.TYPE_11__* %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @mac_selinux_access_check(%struct.TYPE_11__* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %4, align 4
  br label %75

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = call i32 @sd_bus_message_read(%struct.TYPE_11__* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %11, i32* %12)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %4, align 4
  br label %75

34:                                               ; preds = %27
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @bus_verify_manage_unit_files_async(%struct.TYPE_11__* %35, %struct.TYPE_11__* %36, i32* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %4, align 4
  br label %75

43:                                               ; preds = %34
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %75

47:                                               ; preds = %43
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @UNIT_FILE_FORCE, align 4
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @unit_file_set_default(i32 %50, i32 %57, i32* null, i8* %58, i32** %8, i64* %9)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @install_error(i32* %63, i32 %64, i32* %65, i64 %66)
  store i32 %67, i32* %4, align 4
  br label %75

68:                                               ; preds = %56
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @reply_unit_file_changes_and_free(%struct.TYPE_11__* %69, %struct.TYPE_11__* %70, i32 -1, i32* %71, i64 %72, i32* %73)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %68, %62, %46, %41, %32, %25
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @mac_selinux_access_check(%struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_11__*, i8*, i8**, i32*) #1

declare dso_local i32 @bus_verify_manage_unit_files_async(%struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @unit_file_set_default(i32, i32, i32*, i8*, i32**, i64*) #1

declare dso_local i32 @install_error(i32*, i32, i32*, i64) #1

declare dso_local i32 @reply_unit_file_changes_and_free(%struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
