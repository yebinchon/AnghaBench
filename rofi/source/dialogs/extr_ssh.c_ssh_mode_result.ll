; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_ssh.c_ssh_mode_result.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_ssh.c_ssh_mode_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }

@MODE_EXIT = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i32)* @ssh_mode_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssh_mode_result(i32* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @MODE_EXIT, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @mode_get_private_data(i32* %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MENU_NEXT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @NEXT_DIALOG, align 4
  store i32 %21, i32* %9, align 4
  br label %118

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MENU_PREVIOUS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @PREVIOUS_DIALOG, align 4
  store i32 %28, i32* %9, align 4
  br label %117

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MENU_QUICK_SWITCH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MENU_LOWER_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %9, align 4
  br label %116

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MENU_OK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = call i32 @exec_ssh(%struct.TYPE_4__* %59)
  br label %115

61:                                               ; preds = %43, %38
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @MENU_CUSTOM_INPUT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load i8**, i8*** %7, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i8**, i8*** %7, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %79 = load i8**, i8*** %7, align 8
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %78, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 0, i32* %81, align 8
  %82 = call i32 @exec_ssh(%struct.TYPE_4__* %11)
  br label %114

83:                                               ; preds = %70, %66, %61
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @MENU_ENTRY_DELETE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %88
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @delete_ssh(i8* %106)
  %108 = load i32, i32* @RELOAD_DIALOG, align 4
  store i32 %108, i32* %9, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @ssh_mode_destroy(i32* %109)
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @ssh_mode_init(i32* %111)
  br label %113

113:                                              ; preds = %98, %88, %83
  br label %114

114:                                              ; preds = %113, %77
  br label %115

115:                                              ; preds = %114, %53
  br label %116

116:                                              ; preds = %115, %34
  br label %117

117:                                              ; preds = %116, %27
  br label %118

118:                                              ; preds = %117, %20
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local i64 @mode_get_private_data(i32*) #1

declare dso_local i32 @exec_ssh(%struct.TYPE_4__*) #1

declare dso_local i32 @delete_ssh(i8*) #1

declare dso_local i32 @ssh_mode_destroy(i32*) #1

declare dso_local i32 @ssh_mode_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
