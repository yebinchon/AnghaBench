; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Eia608ParseCommand0x14.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Eia608ParseCommand0x14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@EIA608_STATUS_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"[RCL]\00", align 1
@EIA608_MODE_POPUP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"[BS]\00", align 1
@EIA608_STATUS_CHANGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"[ALARM %d]\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[DER]\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"[RU%d]\00", align 1
@EIA608_MODE_PAINTON = common dso_local global i8* null, align 8
@EIA608_STATUS_CAPTION_CLEARED = common dso_local global i32 0, align 4
@EIA608_MODE_ROLLUP_2 = common dso_local global i8* null, align 8
@EIA608_MODE_ROLLUP_3 = common dso_local global i8* null, align 8
@EIA608_MODE_ROLLUP_4 = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"[FON]\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"[RDC]\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"[TR]\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"[RTD]\00", align 1
@EIA608_MODE_TEXT = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"[EDM]\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"[CR]\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"[ENM]\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"[EOC]\00", align 1
@EIA608_COLOR_DEFAULT = common dso_local global i32 0, align 4
@EIA608_FONT_REGULAR = common dso_local global i32 0, align 4
@EIA608_STATUS_CAPTION_ENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @Eia608ParseCommand0x14 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Eia608ParseCommand0x14(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @EIA608_STATUS_DEFAULT, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %159 [
    i32 32, label %9
    i32 33, label %15
    i32 34, label %21
    i32 35, label %21
    i32 36, label %26
    i32 37, label %31
    i32 38, label %31
    i32 39, label %31
    i32 40, label %88
    i32 41, label %91
    i32 42, label %97
    i32 43, label %100
    i32 44, label %106
    i32 45, label %114
    i32 46, label %120
    i32 47, label %125
  ]

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @Debug(i32 %10)
  %12 = load i8*, i8** @EIA608_MODE_POPUP, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  br label %159

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @Debug(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i32 @Eia608Erase(%struct.TYPE_9__* %18)
  %20 = load i32, i32* @EIA608_STATUS_CHANGED, align 4
  store i32 %20, i32* %5, align 4
  br label %159

21:                                               ; preds = %2, %2
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 34
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = call i32 @Debug(i32 %24)
  br label %159

26:                                               ; preds = %2
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @Debug(i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i32 @Eia608EraseToEndOfRow(%struct.TYPE_9__* %29)
  br label %159

31:                                               ; preds = %2, %2, %2
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 35
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = call i32 @Debug(i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** @EIA608_MODE_POPUP, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** @EIA608_MODE_PAINTON, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41, %31
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = call i32 @Eia608EraseScreen(%struct.TYPE_9__* %48, i32 1)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = call i32 @Eia608EraseScreen(%struct.TYPE_9__* %50, i32 0)
  %52 = load i32, i32* @EIA608_STATUS_CHANGED, align 4
  %53 = load i32, i32* @EIA608_STATUS_CAPTION_CLEARED, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %47, %41
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 37
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i8*, i8** @EIA608_MODE_ROLLUP_2, align 8
  store i8* %59, i8** %6, align 8
  br label %68

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 38
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i8*, i8** @EIA608_MODE_ROLLUP_3, align 8
  store i8* %64, i8** %6, align 8
  br label %67

65:                                               ; preds = %60
  %66 = load i8*, i8** @EIA608_MODE_ROLLUP_4, align 8
  store i8* %66, i8** %6, align 8
  br label %67

67:                                               ; preds = %65, %63
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %69, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  br label %87

87:                                               ; preds = %74, %68
  br label %159

88:                                               ; preds = %2
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %90 = call i32 @Debug(i32 %89)
  br label %159

91:                                               ; preds = %2
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %93 = call i32 @Debug(i32 %92)
  %94 = load i8*, i8** @EIA608_MODE_PAINTON, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  br label %159

97:                                               ; preds = %2
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %99 = call i32 @Debug(i32 %98)
  br label %159

100:                                              ; preds = %2
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %102 = call i32 @Debug(i32 %101)
  %103 = load i8*, i8** @EIA608_MODE_TEXT, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %159

106:                                              ; preds = %2
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %108 = call i32 @Debug(i32 %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = call i32 @Eia608EraseScreen(%struct.TYPE_9__* %109, i32 1)
  %111 = load i32, i32* @EIA608_STATUS_CHANGED, align 4
  %112 = load i32, i32* @EIA608_STATUS_CAPTION_CLEARED, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %5, align 4
  br label %159

114:                                              ; preds = %2
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %116 = call i32 @Debug(i32 %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = call i32 @Eia608RollUp(%struct.TYPE_9__* %117)
  %119 = load i32, i32* @EIA608_STATUS_CHANGED, align 4
  store i32 %119, i32* %5, align 4
  br label %159

120:                                              ; preds = %2
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %122 = call i32 @Debug(i32 %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = call i32 @Eia608EraseScreen(%struct.TYPE_9__* %123, i32 0)
  br label %159

125:                                              ; preds = %2
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %127 = call i32 @Debug(i32 %126)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** @EIA608_MODE_PAINTON, align 8
  %132 = icmp ne i8* %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %125
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 1, %136
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %133, %125
  %141 = load i8*, i8** @EIA608_MODE_POPUP, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  store i32 0, i32* %146, align 4
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  %150 = load i32, i32* @EIA608_COLOR_DEFAULT, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @EIA608_FONT_REGULAR, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* @EIA608_STATUS_CHANGED, align 4
  %157 = load i32, i32* @EIA608_STATUS_CAPTION_ENDED, align 4
  %158 = or i32 %156, %157
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %2, %140, %120, %114, %106, %100, %97, %91, %88, %87, %26, %21, %15, %9
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @Debug(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @Eia608Erase(%struct.TYPE_9__*) #1

declare dso_local i32 @Eia608EraseToEndOfRow(%struct.TYPE_9__*) #1

declare dso_local i32 @Eia608EraseScreen(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @Eia608RollUp(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
