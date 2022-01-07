; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_exec_editmode.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_exec_editmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IOleCommandTarget = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"QueryInterface(IID_IOleCommandTarget) failed: %08x\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@editmode = common dso_local global i8* null, align 8
@LD_DOLOAD = common dso_local global i32 0, align 4
@load_state = common dso_local global i32 0, align 4
@GetClassID = common dso_local global i32 0, align 4
@SetStatusText = common dso_local global i32 0, align 4
@Exec_ShellDocView_37 = common dso_local global i32 0, align 4
@GetHostInfo = common dso_local global i32 0, align 4
@GetDisplayName = common dso_local global i32 0, align 4
@Invoke_AMBIENT_SILENT = common dso_local global i32 0, align 4
@Invoke_AMBIENT_OFFLINEIFNOTCONNECTED = common dso_local global i32 0, align 4
@OnChanged_READYSTATE = common dso_local global i32 0, align 4
@Invoke_OnReadyStateChange_Loading = common dso_local global i32 0, align 4
@IsSystemMoniker = common dso_local global i32 0, align 4
@Exec_ShellDocView_84 = common dso_local global i32 0, align 4
@BindToStorage = common dso_local global i32 0, align 4
@InPlaceUIWindow_SetActiveObject = common dso_local global i32 0, align 4
@HideUI = common dso_local global i32 0, align 4
@ShowUI = common dso_local global i32 0, align 4
@InPlaceFrame_SetBorderSpace = common dso_local global i32 0, align 4
@expect_status_text = common dso_local global i32* null, align 8
@readystate_set_loading = common dso_local global i8* null, align 8
@CGID_MSHTML = common dso_local global i32 0, align 4
@IDM_EDITMODE = common dso_local global i32 0, align 4
@OLECMDEXECOPT_DODEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Exec failed: %08x\0A\00", align 1
@EXPECT_UPDATEUI = common dso_local global i32 0, align 4
@EXPECT_SETTITLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @test_exec_editmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_exec_editmode(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32** %5 to i8**
  %9 = call i64 @IUnknown_QueryInterface(i32* %7, i32* @IID_IOleCommandTarget, i8** %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @FAILED(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %138

20:                                               ; preds = %2
  %21 = load i8*, i8** @TRUE, align 8
  store i8* %21, i8** @editmode, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @LD_DOLOAD, align 4
  store i32 %25, i32* @load_state, align 4
  %26 = load i32, i32* @GetClassID, align 4
  %27 = call i32 @SET_EXPECT(i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @SetStatusText, align 4
  %30 = call i32 @SET_EXPECT(i32 %29)
  %31 = load i32, i32* @Exec_ShellDocView_37, align 4
  %32 = call i32 @SET_EXPECT(i32 %31)
  %33 = load i32, i32* @GetHostInfo, align 4
  %34 = call i32 @SET_EXPECT(i32 %33)
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @GetDisplayName, align 4
  %39 = call i32 @SET_EXPECT(i32 %38)
  br label %40

40:                                               ; preds = %37, %28
  %41 = load i32, i32* @Invoke_AMBIENT_SILENT, align 4
  %42 = call i32 @SET_EXPECT(i32 %41)
  %43 = load i32, i32* @Invoke_AMBIENT_OFFLINEIFNOTCONNECTED, align 4
  %44 = call i32 @SET_EXPECT(i32 %43)
  %45 = load i32, i32* @OnChanged_READYSTATE, align 4
  %46 = call i32 @SET_EXPECT(i32 %45)
  %47 = load i32, i32* @Invoke_OnReadyStateChange_Loading, align 4
  %48 = call i32 @SET_EXPECT(i32 %47)
  %49 = load i32, i32* @IsSystemMoniker, align 4
  %50 = call i32 @SET_EXPECT(i32 %49)
  %51 = load i32, i32* @Exec_ShellDocView_84, align 4
  %52 = call i32 @SET_EXPECT(i32 %51)
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = load i32, i32* @BindToStorage, align 4
  %57 = call i32 @SET_EXPECT(i32 %56)
  br label %58

58:                                               ; preds = %55, %40
  %59 = load i32, i32* @InPlaceUIWindow_SetActiveObject, align 4
  %60 = call i32 @SET_EXPECT(i32 %59)
  %61 = load i32, i32* @HideUI, align 4
  %62 = call i32 @SET_EXPECT(i32 %61)
  %63 = load i32, i32* @ShowUI, align 4
  %64 = call i32 @SET_EXPECT(i32 %63)
  %65 = load i32, i32* @InPlaceFrame_SetBorderSpace, align 4
  %66 = call i32 @SET_EXPECT(i32 %65)
  store i32* null, i32** @expect_status_text, align 8
  %67 = load i8*, i8** @TRUE, align 8
  store i8* %67, i8** @readystate_set_loading, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* @IDM_EDITMODE, align 4
  %70 = load i32, i32* @OLECMDEXECOPT_DODEFAULT, align 4
  %71 = call i64 @IOleCommandTarget_Exec(i32* %68, i32* @CGID_MSHTML, i32 %69, i32 %70, i32* null, i32* null)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = load i64, i64* %4, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %58
  %81 = load i32, i32* @GetClassID, align 4
  %82 = call i32 @CHECK_CALLED(i32 %81)
  br label %83

83:                                               ; preds = %80, %58
  %84 = load i32, i32* @SetStatusText, align 4
  %85 = call i32 @CHECK_CALLED(i32 %84)
  %86 = load i32, i32* @Exec_ShellDocView_37, align 4
  %87 = call i32 @CHECK_CALLED(i32 %86)
  %88 = load i32, i32* @GetHostInfo, align 4
  %89 = call i32 @CHECK_CALLED(i32 %88)
  %90 = load i64, i64* %4, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @GetDisplayName, align 4
  %94 = call i32 @CHECK_CALLED(i32 %93)
  br label %95

95:                                               ; preds = %92, %83
  %96 = load i32, i32* @Invoke_AMBIENT_SILENT, align 4
  %97 = call i32 @CHECK_CALLED(i32 %96)
  %98 = load i32, i32* @Invoke_AMBIENT_OFFLINEIFNOTCONNECTED, align 4
  %99 = call i32 @CHECK_CALLED(i32 %98)
  %100 = load i32, i32* @OnChanged_READYSTATE, align 4
  %101 = call i32 @CHECK_CALLED(i32 %100)
  %102 = load i32, i32* @Invoke_OnReadyStateChange_Loading, align 4
  %103 = call i32 @CHECK_CALLED(i32 %102)
  %104 = load i32, i32* @IsSystemMoniker, align 4
  %105 = call i32 @CLEAR_CALLED(i32 %104)
  %106 = load i32, i32* @Exec_ShellDocView_84, align 4
  %107 = call i32 @CHECK_CALLED_BROKEN(i32 %106)
  %108 = load i64, i64* %4, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load i32, i32* @BindToStorage, align 4
  %112 = call i32 @CHECK_CALLED(i32 %111)
  br label %113

113:                                              ; preds = %110, %95
  %114 = load i32, i32* @InPlaceUIWindow_SetActiveObject, align 4
  %115 = call i32 @CHECK_CALLED(i32 %114)
  %116 = load i32, i32* @HideUI, align 4
  %117 = call i32 @CHECK_CALLED(i32 %116)
  %118 = load i32, i32* @ShowUI, align 4
  %119 = call i32 @CHECK_CALLED(i32 %118)
  %120 = load i32, i32* @InPlaceFrame_SetBorderSpace, align 4
  %121 = call i32 @CHECK_CALLED(i32 %120)
  %122 = load i32, i32* @EXPECT_UPDATEUI, align 4
  %123 = load i32, i32* @EXPECT_SETTITLE, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @test_timer(i32 %124)
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @IOleCommandTarget_Release(i32* %126)
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* @IDM_EDITMODE, align 4
  %130 = load i32, i32* @OLECMDEXECOPT_DODEFAULT, align 4
  %131 = call i64 @IOleCommandTarget_Exec(i32* %128, i32* @CGID_MSHTML, i32 %129, i32 %130, i32* null, i32* null)
  store i64 %131, i64* %6, align 8
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* @S_OK, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %136)
  br label %138

138:                                              ; preds = %113, %19
  ret void
}

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IOleCommandTarget_Exec(i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @CLEAR_CALLED(i32) #1

declare dso_local i32 @CHECK_CALLED_BROKEN(i32) #1

declare dso_local i32 @test_timer(i32) #1

declare dso_local i32 @IOleCommandTarget_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
