; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_log_loaded_themes.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_log_loaded_themes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.icon_theme** }
%struct.icon_theme = type { i8* }

@SWAY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Warning: no icon themes loaded\00", align 1
@__const.log_loaded_themes.sep = private unnamed_addr constant [3 x i8] c", \00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Loaded icon themes: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @log_loaded_themes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_loaded_themes(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [3 x i8], align 1
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.icon_theme*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.icon_theme*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @SWAY_INFO, align 4
  %19 = call i32 (i32, i8*, ...) @sway_log(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %108

20:                                               ; preds = %1
  %21 = bitcast [3 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.log_loaded_themes.sep, i32 0, i32 0), i64 3, i1 false)
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %47, %20
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %24
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.icon_theme**, %struct.icon_theme*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.icon_theme*, %struct.icon_theme** %34, i64 %36
  %38 = load %struct.icon_theme*, %struct.icon_theme** %37, align 8
  store %struct.icon_theme* %38, %struct.icon_theme** %7, align 8
  %39 = load %struct.icon_theme*, %struct.icon_theme** %7, align 8
  %40 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %42, %43
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %24

50:                                               ; preds = %24
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 1
  %53 = call i8* @malloc(i64 %52)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %108

57:                                               ; preds = %50
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %98, %57
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @memcpy(i8* %70, i8* %71, i64 %72)
  %74 = load i64, i64* %4, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %9, align 8
  br label %77

77:                                               ; preds = %69, %66
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load %struct.icon_theme**, %struct.icon_theme*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.icon_theme*, %struct.icon_theme** %80, i64 %82
  %84 = load %struct.icon_theme*, %struct.icon_theme** %83, align 8
  store %struct.icon_theme* %84, %struct.icon_theme** %11, align 8
  %85 = load %struct.icon_theme*, %struct.icon_theme** %11, align 8
  %86 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strlen(i8* %87)
  store i64 %88, i64* %12, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load %struct.icon_theme*, %struct.icon_theme** %11, align 8
  %91 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @memcpy(i8* %89, i8* %92, i64 %93)
  %95 = load i64, i64* %12, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 %95
  store i8* %97, i8** %9, align 8
  br label %98

98:                                               ; preds = %77
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %59

101:                                              ; preds = %59
  %102 = load i8*, i8** %9, align 8
  store i8 0, i8* %102, align 1
  %103 = load i32, i32* @SWAY_DEBUG, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 (i32, i8*, ...) @sway_log(i32 %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %104)
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @free(i8* %106)
  br label %108

108:                                              ; preds = %101, %56, %17
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
