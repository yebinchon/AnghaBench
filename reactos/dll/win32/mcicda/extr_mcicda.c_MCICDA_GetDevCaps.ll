; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_GetDevCaps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_GetDevCaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"(%04X, %08X, %p);\0A\00", align 1
@MCIERR_NULL_PARAMETER_BLOCK = common dso_local global i32 0, align 4
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@MCI_GETDEVCAPS_ITEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"MCI_GETDEVCAPS_ITEM dwItem=%08X;\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MCI_FALSE = common dso_local global i32 0, align 4
@MCI_RESOURCE_RETURNED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MCI_TRUE = common dso_local global i32 0, align 4
@MCI_DEVTYPE_CD_AUDIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unsupported %x devCaps item\0A\00", align 1
@MCIERR_UNSUPPORTED_FUNCTION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"No GetDevCaps-Item !\0A\00", align 1
@MCIERR_MISSING_PARAMETER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"lpParms->dwReturn=%08X;\0A\00", align 1
@MCI_NOTIFY = common dso_local global i32 0, align 4
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_3__*)* @MCICDA_GetDevCaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCICDA_GetDevCaps(i32 %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @mciGetDriverData(i32 %10)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, %struct.TYPE_3__* %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @MCIERR_NULL_PARAMETER_BLOCK, align 4
  store i32 %20, i32* %4, align 4
  br label %139

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %25, i32* %4, align 4
  br label %139

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MCI_GETDEVCAPS_ITEM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %118

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %111 [
    i32 134, label %39
    i32 130, label %47
    i32 129, label %55
    i32 131, label %63
    i32 128, label %71
    i32 132, label %79
    i32 136, label %87
    i32 135, label %95
    i32 133, label %103
  ]

39:                                               ; preds = %31
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32, i32* @MCI_FALSE, align 4
  %42 = call i8* @MAKEMCIRESOURCE(i32 %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %46, i32* %9, align 4
  br label %117

47:                                               ; preds = %31
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32, i32* @MCI_TRUE, align 4
  %50 = call i8* @MAKEMCIRESOURCE(i32 %48, i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %54, i32* %9, align 4
  br label %117

55:                                               ; preds = %31
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* @MCI_FALSE, align 4
  %58 = call i8* @MAKEMCIRESOURCE(i32 %56, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %62, i32* %9, align 4
  br label %117

63:                                               ; preds = %31
  %64 = load i32, i32* @MCI_DEVTYPE_CD_AUDIO, align 4
  %65 = load i32, i32* @MCI_DEVTYPE_CD_AUDIO, align 4
  %66 = call i8* @MAKEMCIRESOURCE(i32 %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %70, i32* %9, align 4
  br label %117

71:                                               ; preds = %31
  %72 = load i32, i32* @FALSE, align 4
  %73 = load i32, i32* @MCI_FALSE, align 4
  %74 = call i8* @MAKEMCIRESOURCE(i32 %72, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %78, i32* %9, align 4
  br label %117

79:                                               ; preds = %31
  %80 = load i32, i32* @FALSE, align 4
  %81 = load i32, i32* @MCI_FALSE, align 4
  %82 = call i8* @MAKEMCIRESOURCE(i32 %80, i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %86, i32* %9, align 4
  br label %117

87:                                               ; preds = %31
  %88 = load i32, i32* @TRUE, align 4
  %89 = load i32, i32* @MCI_TRUE, align 4
  %90 = call i8* @MAKEMCIRESOURCE(i32 %88, i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %94, i32* %9, align 4
  br label %117

95:                                               ; preds = %31
  %96 = load i32, i32* @TRUE, align 4
  %97 = load i32, i32* @MCI_TRUE, align 4
  %98 = call i8* @MAKEMCIRESOURCE(i32 %96, i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %102, i32* %9, align 4
  br label %117

103:                                              ; preds = %31
  %104 = load i32, i32* @FALSE, align 4
  %105 = load i32, i32* @MCI_FALSE, align 4
  %106 = call i8* @MAKEMCIRESOURCE(i32 %104, i32 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %110, i32* %9, align 4
  br label %117

111:                                              ; preds = %31
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @MCIERR_UNSUPPORTED_FUNCTION, align 4
  store i32 %116, i32* %4, align 4
  br label %139

117:                                              ; preds = %103, %95, %87, %79, %71, %63, %55, %47, %39
  br label %121

118:                                              ; preds = %26
  %119 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* @MCIERR_MISSING_PARAMETER, align 4
  store i32 %120, i32* %4, align 4
  br label %139

121:                                              ; preds = %117
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @MCI_NOTIFY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %121
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %136 = call i32 @MCICDA_Notify(i32 %133, i32* %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %121
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %118, %111, %24, %19
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i64 @mciGetDriverData(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i8* @MAKEMCIRESOURCE(i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @MCICDA_Notify(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
