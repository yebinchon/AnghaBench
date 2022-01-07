; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_controlevent.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_controlevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@winetest_interactive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"interactive ControlEvent tests\0A\00", align 1
@INSTALLUILEVEL_FULL = common dso_local global i32 0, align 4
@externalui_message_string_callback = common dso_local global i32 0, align 4
@INSTALLLOGMODE_SHOWDIALOG = common dso_local global i32 0, align 4
@externalui_message_callback = common dso_local global i32 0, align 4
@MSITEST_INSTALLLOGMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create database\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"forcecodepage.idt\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\0D\0A\0D\0A1252\09_ForceCodepage\0D\0A\00", align 1
@CURR_DIR = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"'spawn', 50, 50, 100, 100, 3, 'button'\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"'spawn2', 50, 50, 100, 100, 3, 'button'\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"'child1', 50, 50, 80, 40, 3, 'exit'\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"'child2', 50, 50, 80, 40, 3, 'exit'\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"'spawn', 'button', 'PushButton', 10, 10, 66, 17, 3, 'Click me'\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"'spawn2', 'button', 'PushButton', 10, 10, 66, 17, 3, 'Click me'\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"'child1', 'exit', 'PushButton', 10, 10, 66, 17, 3, 'Click me'\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"'child2', 'exit', 'PushButton', 10, 10, 66, 17, 3, 'Click me'\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"'child1', 'exit', 'EndDialog', 'Exit', 1, 1\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"'child2', 'exit', 'EndDialog', 'Exit', 1, 1\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"'custom', 51, 'dummy', 'dummy value'\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"'spawn', 'button', 'SpawnDialog', 'child1', 1, 1\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"'spawn', 'button', 'DoAction', 'custom', 1, 2\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"'spawn2', 'button', 'SpawnDialog', 'child1', 1, 1\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"'spawn2', 'button', 'SpawnDialog', 'child2', 1, 2\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"'spawn2', 'button', 'DoAction', 'custom', 1, 3\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"failed to create package: %u\0A\00", align 1
@openpackage_sequence = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"MsiOpenPackage()\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"spawn\00", align 1
@ERROR_INSTALL_USEREXIT = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [41 x i8] c"expected ERROR_INSTALL_USEREXIT, got %u\0A\00", align 1
@controlevent_spawn_sequence = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [21 x i8] c"control event: spawn\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"spawn2\00", align 1
@controlevent_spawn2_sequence = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [22 x i8] c"control event: spawn2\00", align 1
@closehandle_sequence = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [17 x i8] c"MsiCloseHandle()\00", align 1
@msifile = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_controlevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_controlevent() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @winetest_interactive, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %115

9:                                                ; preds = %0
  %10 = load i32, i32* @INSTALLUILEVEL_FULL, align 4
  %11 = call i32 @MsiSetInternalUI(i32 %10, i32* null)
  %12 = load i32, i32* @externalui_message_string_callback, align 4
  %13 = load i32, i32* @INSTALLLOGMODE_SHOWDIALOG, align 4
  %14 = call i32 @MsiSetExternalUIA(i32 %12, i32 %13, i32* null)
  %15 = load i32, i32* @externalui_message_callback, align 4
  %16 = load i32, i32* @MSITEST_INSTALLLOGMODE, align 4
  %17 = call i64 @MsiSetExternalUIRecord(i32 %15, i32 %16, i32* null, i32* %1)
  store i64 %17, i64* %4, align 8
  %18 = call i32 (...) @flush_sequence()
  %19 = call i32 @CoInitialize(i32* null)
  %20 = call i32 (...) @create_package_db()
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @create_file_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @CURR_DIR, align 4
  %26 = call i64 @MsiDatabaseImportA(i32 %24, i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %4, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @create_dialog_table(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @add_dialog_entry(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @add_dialog_entry(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @add_dialog_entry(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @add_dialog_entry(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @create_control_table(i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @add_control_entry(i32 %45, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0))
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @add_control_entry(i32 %47, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0))
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @add_control_entry(i32 %49, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0))
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @add_control_entry(i32 %51, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0))
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @create_controlevent_table(i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @add_controlevent_entry(i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @add_controlevent_entry(i32 %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0))
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @create_custom_action_table(i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @add_custom_action_entry(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @add_controlevent_entry(i32 %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0))
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @add_controlevent_entry(i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0))
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @add_controlevent_entry(i32 %67, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0))
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @add_controlevent_entry(i32 %69, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0))
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @add_controlevent_entry(i32 %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  %73 = load i32, i32* %2, align 4
  %74 = call i64 @package_from_db(i32 %73, i32* %3)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @ERROR_SUCCESS, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %4, align 8
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* @openpackage_sequence, align 4
  %82 = load i32, i32* @FALSE, align 4
  %83 = call i32 @ok_sequence(i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = call i64 @MsiDoActionA(i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  store i64 %85, i64* %4, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* @ERROR_INSTALL_USEREXIT, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %4, align 8
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i64 %90)
  %92 = load i32, i32* @controlevent_spawn_sequence, align 4
  %93 = load i32, i32* @FALSE, align 4
  %94 = call i32 @ok_sequence(i32 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %3, align 4
  %96 = call i64 @MsiDoActionA(i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  store i64 %96, i64* %4, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* @ERROR_INSTALL_USEREXIT, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %4, align 8
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i64 %101)
  %103 = load i32, i32* @controlevent_spawn2_sequence, align 4
  %104 = load i32, i32* @FALSE, align 4
  %105 = call i32 @ok_sequence(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @MsiCloseHandle(i32 %106)
  %108 = load i32, i32* @closehandle_sequence, align 4
  %109 = load i32, i32* @FALSE, align 4
  %110 = call i32 @ok_sequence(i32 %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 %109)
  %111 = call i32 (...) @CoUninitialize()
  %112 = load i8*, i8** @msifile, align 8
  %113 = call i32 @DeleteFileA(i8* %112)
  %114 = call i32 @DeleteFileA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %115

115:                                              ; preds = %9, %7
  ret void
}

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @MsiSetInternalUI(i32, i32*) #1

declare dso_local i32 @MsiSetExternalUIA(i32, i32, i32*) #1

declare dso_local i64 @MsiSetExternalUIRecord(i32, i32, i32*, i32*) #1

declare dso_local i32 @flush_sequence(...) #1

declare dso_local i32 @CoInitialize(i32*) #1

declare dso_local i32 @create_package_db(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @create_file_data(i8*, i8*) #1

declare dso_local i64 @MsiDatabaseImportA(i32, i32, i8*) #1

declare dso_local i32 @create_dialog_table(i32) #1

declare dso_local i32 @add_dialog_entry(i32, i8*) #1

declare dso_local i32 @create_control_table(i32) #1

declare dso_local i32 @add_control_entry(i32, i8*) #1

declare dso_local i32 @create_controlevent_table(i32) #1

declare dso_local i32 @add_controlevent_entry(i32, i8*) #1

declare dso_local i32 @create_custom_action_table(i32) #1

declare dso_local i32 @add_custom_action_entry(i32, i8*) #1

declare dso_local i64 @package_from_db(i32, i32*) #1

declare dso_local i32 @ok_sequence(i32, i8*, i32) #1

declare dso_local i64 @MsiDoActionA(i32, i8*) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @CoUninitialize(...) #1

declare dso_local i32 @DeleteFileA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
