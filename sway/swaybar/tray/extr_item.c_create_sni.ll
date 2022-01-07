; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_create_sni.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_create_sni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_sni = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, %struct.swaybar_tray* }
%struct.swaybar_tray = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"/StatusNotifierItem\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"org.freedesktop.StatusNotifierItem\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"org.kde.StatusNotifierItem\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"IconThemePath\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"IconName\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"IconPixmap\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"AttentionIconName\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"AttentionIconPixmap\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ItemIsMenu\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Menu\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"NewIcon\00", align 1
@handle_new_icon = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"NewAttentionIcon\00", align 1
@handle_new_attention_icon = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"NewStatus\00", align 1
@handle_new_status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.swaybar_sni* @create_sni(i8* %0, %struct.swaybar_tray* %1) #0 {
  %3 = alloca %struct.swaybar_sni*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.swaybar_tray*, align 8
  %6 = alloca %struct.swaybar_sni*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.swaybar_tray* %1, %struct.swaybar_tray** %5, align 8
  %8 = call %struct.swaybar_sni* @calloc(i32 1, i32 88)
  store %struct.swaybar_sni* %8, %struct.swaybar_sni** %6, align 8
  %9 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %10 = icmp ne %struct.swaybar_sni* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.swaybar_sni* null, %struct.swaybar_sni** %3, align 8
  br label %100

12:                                               ; preds = %2
  %13 = load %struct.swaybar_tray*, %struct.swaybar_tray** %5, align 8
  %14 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %15 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %14, i32 0, i32 15
  store %struct.swaybar_tray* %13, %struct.swaybar_tray** %15, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strdup(i8* %16)
  %18 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %19 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %18, i32 0, i32 14
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 47)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %12
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @strdup(i8* %25)
  %27 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %28 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %27, i32 0, i32 13
  store i8* %26, i8** %28, align 8
  %29 = call i8* @strdup(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %31 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %30, i32 0, i32 12
  store i8* %29, i8** %31, align 8
  %32 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %33 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  br label %55

34:                                               ; preds = %12
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i8* @strndup(i8* %35, i32 %41)
  %43 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %44 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %43, i32 0, i32 13
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @strdup(i8* %45)
  %47 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %48 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %47, i32 0, i32 12
  store i8* %46, i8** %48, align 8
  %49 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %50 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %50, align 8
  %51 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %52 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %53 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %52, i32 0, i32 11
  %54 = call i32 @sni_get_property_async(%struct.swaybar_sni* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %53)
  br label %55

55:                                               ; preds = %34, %24
  %56 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %57 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %58 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %57, i32 0, i32 10
  %59 = call i32 @sni_get_property_async(%struct.swaybar_sni* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %58)
  %60 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %61 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %62 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %61, i32 0, i32 9
  %63 = call i32 @sni_get_property_async(%struct.swaybar_sni* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %62)
  %64 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %65 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %66 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %65, i32 0, i32 8
  %67 = call i32 @sni_get_property_async(%struct.swaybar_sni* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* null, i32* %66)
  %68 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %69 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %70 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %69, i32 0, i32 7
  %71 = call i32 @sni_get_property_async(%struct.swaybar_sni* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %70)
  %72 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %73 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %74 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %73, i32 0, i32 6
  %75 = call i32 @sni_get_property_async(%struct.swaybar_sni* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* null, i32* %74)
  %76 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %77 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %78 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %77, i32 0, i32 5
  %79 = call i32 @sni_get_property_async(%struct.swaybar_sni* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32* %78)
  %80 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %81 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %82 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %81, i32 0, i32 4
  %83 = call i32 @sni_get_property_async(%struct.swaybar_sni* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32* %82)
  %84 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %85 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %86 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %85, i32 0, i32 3
  %87 = load i32, i32* @handle_new_icon, align 4
  %88 = call i32 @sni_match_signal(%struct.swaybar_sni* %84, i32* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %87)
  %89 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %90 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %91 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %90, i32 0, i32 2
  %92 = load i32, i32* @handle_new_attention_icon, align 4
  %93 = call i32 @sni_match_signal(%struct.swaybar_sni* %89, i32* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %92)
  %94 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %95 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %96 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %95, i32 0, i32 1
  %97 = load i32, i32* @handle_new_status, align 4
  %98 = call i32 @sni_match_signal(%struct.swaybar_sni* %94, i32* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %97)
  %99 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  store %struct.swaybar_sni* %99, %struct.swaybar_sni** %3, align 8
  br label %100

100:                                              ; preds = %55, %11
  %101 = load %struct.swaybar_sni*, %struct.swaybar_sni** %3, align 8
  ret %struct.swaybar_sni* %101
}

declare dso_local %struct.swaybar_sni* @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @sni_get_property_async(%struct.swaybar_sni*, i8*, i8*, i32*) #1

declare dso_local i32 @sni_match_signal(%struct.swaybar_sni*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
