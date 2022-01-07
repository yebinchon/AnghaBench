; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_host.c_get_registered_snis_callback.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_host.c_get_registered_snis_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.swaybar_tray = type { i32 }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to get registered SNIs: %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to read registered SNIs: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_5__*)* @get_registered_snis_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_registered_snis_callback(i32* %0, i8* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.swaybar_tray*, align 8
  %12 = alloca i8**, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @sd_bus_message_is_method_error(i32* %13, i32* null)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.TYPE_5__* @sd_bus_message_get_error(i32* %17)
  %19 = bitcast %struct.TYPE_5__* %8 to i8*
  %20 = bitcast %struct.TYPE_5__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load i32, i32* @SWAY_ERROR, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sway_log(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @sd_bus_error_get_errno(%struct.TYPE_5__* %8)
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %73

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @sd_bus_message_enter_container(i32* %28, i8 signext 118, i32* null)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @SWAY_ERROR, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 @sway_log(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %73

39:                                               ; preds = %27
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @sd_bus_message_read_strv(i32* %40, i8*** %10)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @SWAY_ERROR, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 0, %46
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 @sway_log(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %73

51:                                               ; preds = %39
  %52 = load i8**, i8*** %10, align 8
  %53 = icmp ne i8** %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = bitcast i8* %55 to %struct.swaybar_tray*
  store %struct.swaybar_tray* %56, %struct.swaybar_tray** %11, align 8
  %57 = load i8**, i8*** %10, align 8
  store i8** %57, i8*** %12, align 8
  br label %58

58:                                               ; preds = %67, %54
  %59 = load i8**, i8*** %12, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.swaybar_tray*, %struct.swaybar_tray** %11, align 8
  %64 = load i8**, i8*** %12, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @add_sni(%struct.swaybar_tray* %63, i8* %65)
  br label %67

67:                                               ; preds = %62
  %68 = load i8**, i8*** %12, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %12, align 8
  br label %58

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %51
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %44, %32, %16
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @sd_bus_message_is_method_error(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @sd_bus_message_get_error(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @sd_bus_error_get_errno(%struct.TYPE_5__*) #1

declare dso_local i32 @sd_bus_message_enter_container(i32*, i8 signext, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sd_bus_message_read_strv(i32*, i8***) #1

declare dso_local i32 @add_sni(%struct.swaybar_tray*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
