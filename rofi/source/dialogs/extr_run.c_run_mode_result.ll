; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_run.c_run_mode_result.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_run.c_run_mode_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i8** }

@MODE_EXIT = common dso_local global i32 0, align 4
@MENU_CUSTOM_ACTION = common dso_local global i32 0, align 4
@MENU_NEXT = common dso_local global i32 0, align 4
@NEXT_DIALOG = common dso_local global i32 0, align 4
@MENU_PREVIOUS = common dso_local global i32 0, align 4
@PREVIOUS_DIALOG = common dso_local global i32 0, align 4
@MENU_QUICK_SWITCH = common dso_local global i32 0, align 4
@MENU_LOWER_MASK = common dso_local global i32 0, align 4
@MENU_OK = common dso_local global i32 0, align 4
@MENU_CUSTOM_INPUT = common dso_local global i32 0, align 4
@MENU_ENTRY_DELETE = common dso_local global i32 0, align 4
@RELOAD_DIALOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8**, i32)* @run_mode_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_mode_result(%struct.TYPE_7__* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %9, align 8
  %16 = load i32, i32* @MODE_EXIT, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MENU_CUSTOM_ACTION, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @MENU_CUSTOM_ACTION, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MENU_NEXT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @NEXT_DIALOG, align 4
  store i32 %28, i32* %10, align 4
  br label %123

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MENU_PREVIOUS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @PREVIOUS_DIALOG, align 4
  store i32 %35, i32* %10, align 4
  br label %122

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MENU_QUICK_SWITCH, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MENU_LOWER_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %10, align 4
  br label %121

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MENU_OK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %50
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @exec_cmd(i8* %66, i32 %67)
  br label %120

69:                                               ; preds = %50, %45
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @MENU_CUSTOM_INPUT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load i8**, i8*** %7, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i8**, i8*** %7, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i8**, i8*** %7, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @exec_cmd(i8* %87, i32 %88)
  br label %119

90:                                               ; preds = %78, %74, %69
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @MENU_ENTRY_DELETE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %118

104:                                              ; preds = %95
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @delete_entry(i8* %111)
  %113 = load i32, i32* @RELOAD_DIALOG, align 4
  store i32 %113, i32* %10, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = call i32 @run_mode_destroy(%struct.TYPE_7__* %114)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = call i32 @run_mode_init(%struct.TYPE_7__* %116)
  br label %118

118:                                              ; preds = %104, %95, %90
  br label %119

119:                                              ; preds = %118, %85
  br label %120

120:                                              ; preds = %119, %59
  br label %121

121:                                              ; preds = %120, %41
  br label %122

122:                                              ; preds = %121, %34
  br label %123

123:                                              ; preds = %122, %27
  %124 = load i32, i32* %10, align 4
  ret i32 %124
}

declare dso_local i32 @exec_cmd(i8*, i32) #1

declare dso_local i32 @delete_entry(i8*) #1

declare dso_local i32 @run_mode_destroy(%struct.TYPE_7__*) #1

declare dso_local i32 @run_mode_init(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
