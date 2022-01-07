; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_group_handler.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_group_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icon_theme = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.icon_theme_subdir** }
%struct.icon_theme_subdir = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Icon Theme\00", align 1
@cmp_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.icon_theme*)* @group_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_handler(i8* %0, i8* %1, %struct.icon_theme* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.icon_theme*, align 8
  %8 = alloca %struct.icon_theme_subdir*, align 8
  %9 = alloca %struct.icon_theme_subdir*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.icon_theme* %2, %struct.icon_theme** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  br label %138

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.icon_theme*, %struct.icon_theme** %7, align 8
  %22 = call i32 @validate_icon_theme(%struct.icon_theme* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %138

25:                                               ; preds = %20
  br label %109

26:                                               ; preds = %16
  %27 = load %struct.icon_theme*, %struct.icon_theme** %7, align 8
  %28 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %138

34:                                               ; preds = %26
  %35 = load %struct.icon_theme*, %struct.icon_theme** %7, align 8
  %36 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.icon_theme_subdir**, %struct.icon_theme_subdir*** %38, align 8
  %40 = load %struct.icon_theme*, %struct.icon_theme** %7, align 8
  %41 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %39, i64 %46
  %48 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %47, align 8
  store %struct.icon_theme_subdir* %48, %struct.icon_theme_subdir** %8, align 8
  %49 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %50 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %138

54:                                               ; preds = %34
  %55 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %56 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %108 [
    i32 130, label %58
    i32 129, label %66
    i32 128, label %89
  ]

58:                                               ; preds = %54
  %59 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %60 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %63 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %65 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %64, i32 0, i32 2
  store i32 %61, i32* %65, align 4
  br label %108

66:                                               ; preds = %54
  %67 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %68 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %73 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %76 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %79 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %84 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %87 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %77
  br label %108

89:                                               ; preds = %54
  %90 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %91 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %94 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %92, %95
  %97 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %98 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %100 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %103 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %101, %104
  %106 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %8, align 8
  %107 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %89, %54, %88, %58
  br label %109

109:                                              ; preds = %108, %25
  %110 = load i8*, i8** %6, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %137

112:                                              ; preds = %109
  %113 = load %struct.icon_theme*, %struct.icon_theme** %7, align 8
  %114 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @cmp_group, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @list_seq_find(i32 %115, i32 %116, i8* %117)
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %137

120:                                              ; preds = %112
  %121 = call %struct.icon_theme_subdir* @calloc(i32 1, i32 24)
  store %struct.icon_theme_subdir* %121, %struct.icon_theme_subdir** %9, align 8
  %122 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %9, align 8
  %123 = icmp ne %struct.icon_theme_subdir* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  store i32 1, i32* %4, align 4
  br label %138

125:                                              ; preds = %120
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @strdup(i8* %126)
  %128 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %9, align 8
  %129 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %9, align 8
  %131 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %130, i32 0, i32 4
  store i32 2, i32* %131, align 4
  %132 = load %struct.icon_theme*, %struct.icon_theme** %7, align 8
  %133 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %9, align 8
  %136 = call i32 @list_add(%struct.TYPE_2__* %134, %struct.icon_theme_subdir* %135)
  br label %137

137:                                              ; preds = %125, %112, %109
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %124, %53, %33, %24, %12
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @validate_icon_theme(%struct.icon_theme*) #1

declare dso_local i32 @list_seq_find(i32, i32, i8*) #1

declare dso_local %struct.icon_theme_subdir* @calloc(i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @list_add(%struct.TYPE_2__*, %struct.icon_theme_subdir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
