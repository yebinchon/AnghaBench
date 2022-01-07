; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_actions.c_vlc_keycode2str.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_actions.c_vlc_keycode2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@KEY_MODIFIER = common dso_local global i32 0, align 4
@KEYS_COUNT = common dso_local global i64 0, align 8
@s_keys = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"%s%s%s%s%s%s\00", align 1
@KEY_MODIFIER_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Ctrl+\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KEY_MODIFIER_ALT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Alt+\00", align 1
@KEY_MODIFIER_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Shift+\00", align 1
@KEY_MODIFIER_META = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"Meta+\00", align 1
@KEY_MODIFIER_COMMAND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"Command+\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_keycode2str(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8* (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [5 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* (i8*)* @vlc_gettext, i8* (i8*)* @nooptext
  store i8* (i8*)* %15, i8* (i8*)** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @KEY_MODIFIER, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %21

21:                                               ; preds = %40, %2
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @KEYS_COUNT, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_keys, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_keys, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %7, align 8
  br label %51

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %11, align 8
  br label %21

43:                                               ; preds = %21
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %46 = call i32* @utf8_cp(i64 %44, i8* %45)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i8* null, i8** %3, align 8
  br label %115

49:                                               ; preds = %43
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8* %50, i8** %7, align 8
  br label %51

51:                                               ; preds = %49, %33
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @KEY_MODIFIER_CTRL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i8* (i8*)*, i8* (i8*)** %6, align 8
  %58 = call i8* @N_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i8* %57(i8* %58)
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %60 ]
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @KEY_MODIFIER_ALT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i8* (i8*)*, i8* (i8*)** %6, align 8
  %69 = call i8* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i8* %68(i8* %69)
  br label %72

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i8* [ %70, %67 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %71 ]
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @KEY_MODIFIER_SHIFT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i8* (i8*)*, i8* (i8*)** %6, align 8
  %80 = call i8* @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %81 = call i8* %79(i8* %80)
  br label %83

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i8* [ %81, %78 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %82 ]
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @KEY_MODIFIER_META, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i8* (i8*)*, i8* (i8*)** %6, align 8
  %91 = call i8* @N_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %92 = call i8* %90(i8* %91)
  br label %94

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i8* [ %92, %89 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %93 ]
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @KEY_MODIFIER_COMMAND, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i8* (i8*)*, i8* (i8*)** %6, align 8
  %102 = call i8* @N_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %103 = call i8* %101(i8* %102)
  br label %105

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %100
  %106 = phi i8* [ %103, %100 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %104 ]
  %107 = load i8* (i8*)*, i8* (i8*)** %6, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i8* %107(i8* %108)
  %110 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %62, i8* %73, i8* %84, i8* %95, i8* %106, i8* %109)
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  store i8* null, i8** %3, align 8
  br label %115

113:                                              ; preds = %105
  %114 = load i8*, i8** %8, align 8
  store i8* %114, i8** %3, align 8
  br label %115

115:                                              ; preds = %113, %112, %48
  %116 = load i8*, i8** %3, align 8
  ret i8* %116
}

declare dso_local i8* @vlc_gettext(i8*) #1

declare dso_local i8* @nooptext(i8*) #1

declare dso_local i32* @utf8_cp(i64, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
