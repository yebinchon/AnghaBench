; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_test_GUIDs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_test_GUIDs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CSIDL_BITBUCKET = common dso_local global i32 0, align 4
@CLSID_RecycleBin = common dso_local global i32 0, align 4
@CSIDL_CONTROLS = common dso_local global i32 0, align 4
@CLSID_ControlPanel = common dso_local global i32 0, align 4
@CSIDL_DRIVES = common dso_local global i32 0, align 4
@CLSID_MyComputer = common dso_local global i32 0, align 4
@CSIDL_INTERNET = common dso_local global i32 0, align 4
@CLSID_Internet = common dso_local global i32 0, align 4
@CSIDL_NETWORK = common dso_local global i32 0, align 4
@CLSID_NetworkPlaces = common dso_local global i32 0, align 4
@CLSID_NetworkExplorerFolder = common dso_local global i32 0, align 4
@CSIDL_PERSONAL = common dso_local global i32 0, align 4
@CLSID_MyDocuments = common dso_local global i32 0, align 4
@_CLSID_Documents = common dso_local global i32 0, align 4
@CSIDL_COMMON_DOCUMENTS = common dso_local global i32 0, align 4
@CLSID_CommonDocuments = common dso_local global i32 0, align 4
@CSIDL_PRINTERS = common dso_local global i32 0, align 4
@CLSID_Printers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GUIDs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GUIDs() #0 {
  %1 = load i32, i32* @CSIDL_BITBUCKET, align 4
  %2 = call i32 @matchGUID(i32 %1, i32* @CLSID_RecycleBin, i32* null)
  %3 = load i32, i32* @CSIDL_CONTROLS, align 4
  %4 = call i32 @matchGUID(i32 %3, i32* @CLSID_ControlPanel, i32* null)
  %5 = load i32, i32* @CSIDL_DRIVES, align 4
  %6 = call i32 @matchGUID(i32 %5, i32* @CLSID_MyComputer, i32* null)
  %7 = load i32, i32* @CSIDL_INTERNET, align 4
  %8 = call i32 @matchGUID(i32 %7, i32* @CLSID_Internet, i32* null)
  %9 = load i32, i32* @CSIDL_NETWORK, align 4
  %10 = call i32 @matchGUID(i32 %9, i32* @CLSID_NetworkPlaces, i32* @CLSID_NetworkExplorerFolder)
  %11 = load i32, i32* @CSIDL_PERSONAL, align 4
  %12 = call i32 @matchGUID(i32 %11, i32* @CLSID_MyDocuments, i32* @_CLSID_Documents)
  %13 = load i32, i32* @CSIDL_COMMON_DOCUMENTS, align 4
  %14 = call i32 @matchGUID(i32 %13, i32* @CLSID_CommonDocuments, i32* null)
  %15 = load i32, i32* @CSIDL_PRINTERS, align 4
  %16 = call i32 @matchGUID(i32 %15, i32* @CLSID_Printers, i32* null)
  ret void
}

declare dso_local i32 @matchGUID(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
