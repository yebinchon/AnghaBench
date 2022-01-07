; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_create_drive_bar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_create_drive_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@TBSTATE_ENABLED = common dso_local global i32 0, align 4
@BTNS_BUTTON = common dso_local global i32 0, align 4
@BUFFER_LEN = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@CCS_NOMOVEY = common dso_local global i32 0, align 4
@TBSTYLE_LIST = common dso_local global i32 0, align 4
@IDW_DRIVEBAR = common dso_local global i32 0, align 4
@IDB_DRIVEBAR = common dso_local global i32 0, align 4
@IDS_SHELL = common dso_local global i32 0, align 4
@TB_ADDSTRINGW = common dso_local global i32 0, align 4
@ID_DRIVE_SHELL_NS = common dso_local global i32 0, align 4
@TB_INSERTBUTTONW = common dso_local global i32 0, align 4
@ID_DRIVE_FIRST = common dso_local global i32 0, align 4
@ID_DRIVE_UNIX_FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_drive_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_drive_bar() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %9 = load i32, i32* @TBSTATE_ENABLED, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %11 = load i32, i32* @BTNS_BUTTON, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 6
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 7
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 8
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 9
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* @BUFFER_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %2, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %3, align 8
  store i32 1, i32* %4, align 4
  %24 = load i32, i32* @BUFFER_LEN, align 4
  %25 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 1), align 8
  %26 = call i32 @GetLogicalDriveStringsW(i32 %24, i64* %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 3), align 4
  %28 = load i32, i32* @WS_CHILD, align 4
  %29 = load i32, i32* @WS_VISIBLE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CCS_NOMOVEY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @TBSTYLE_LIST, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @IDW_DRIVEBAR, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 2), align 8
  %37 = load i32, i32* @IDB_DRIVEBAR, align 4
  %38 = call i32 @CreateToolbarEx(i32 %27, i32 %34, i32 %35, i32 2, i32 %36, i32 %37, %struct.TYPE_6__* %1, i32 0, i32 16, i32 13, i32 16, i32 13, i32 44)
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0), align 8
  %39 = udiv i64 %21, 1
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @IDS_SHELL, align 4
  %42 = call i32 @load_string(i8* %23, i32 %40, i32 %41)
  %43 = call i32 @lstrlenW(i8* %23)
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %23, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0), align 8
  %48 = load i32, i32* @TB_ADDSTRINGW, align 4
  %49 = ptrtoint i8* %23 to i32
  %50 = call i32 @SendMessageW(i32 %47, i32 %48, i32 0, i32 %49)
  %51 = load i32, i32* @ID_DRIVE_SHELL_NS, align 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0), align 8
  %54 = load i32, i32* @TB_INSERTBUTTONW, align 4
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  %57 = ptrtoint %struct.TYPE_6__* %1 to i32
  %58 = call i32 @SendMessageW(i32 %53, i32 %54, i32 %55, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0), align 8
  %63 = load i32, i32* @TB_ADDSTRINGW, align 4
  %64 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 1), align 8
  %65 = ptrtoint i64* %64 to i32
  %66 = call i32 @SendMessageW(i32 %62, i32 %63, i32 0, i32 %65)
  %67 = load i32, i32* @ID_DRIVE_FIRST, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  store i32 %67, i32* %68, align 4
  %69 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 1), align 8
  store i64* %69, i64** %5, align 8
  br label %70

70:                                               ; preds = %106, %0
  %71 = load i64*, i64** %5, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %70
  %75 = load i64*, i64** %5, align 8
  %76 = call i32 @GetDriveTypeW(i64* %75)
  switch i32 %76, label %85 [
    i32 128, label %77
    i32 131, label %79
    i32 129, label %81
    i32 130, label %83
  ]

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 1, i32* %78, align 4
  br label %87

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 3, i32* %80, align 4
  br label %87

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 4, i32* %82, align 4
  br label %87

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 5, i32* %84, align 4
  br label %87

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 2, i32* %86, align 4
  br label %87

87:                                               ; preds = %85, %83, %81, %79, %77
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0), align 8
  %89 = load i32, i32* @TB_INSERTBUTTONW, align 4
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  %92 = ptrtoint %struct.TYPE_6__* %1 to i32
  %93 = call i32 @SendMessageW(i32 %88, i32 %89, i32 %90, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %105, %87
  %101 = load i64*, i64** %5, align 8
  %102 = getelementptr inbounds i64, i64* %101, i32 1
  store i64* %102, i64** %5, align 8
  %103 = load i64, i64* %101, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %100

106:                                              ; preds = %100
  br label %70

107:                                              ; preds = %70
  %108 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %108)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetLogicalDriveStringsW(i32, i64*) #2

declare dso_local i32 @CreateToolbarEx(i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @load_string(i8*, i32, i32) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #2

declare dso_local i32 @GetDriveTypeW(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
