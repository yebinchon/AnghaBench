; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_handle_new_attention_icon.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_handle_new_attention_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_sni = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"AttentionIconName\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"AttentionIconPixmap\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"attention icon\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @handle_new_attention_icon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_new_attention_icon(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.swaybar_sni*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.swaybar_sni*
  store %struct.swaybar_sni* %9, %struct.swaybar_sni** %7, align 8
  %10 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %11 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %12 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %11, i32 0, i32 1
  %13 = call i32 @sni_get_property_async(%struct.swaybar_sni* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %14 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %15 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %16 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %15, i32 0, i32 0
  %17 = call i32 @sni_get_property_async(%struct.swaybar_sni* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* null, i32* %16)
  %18 = load %struct.swaybar_sni*, %struct.swaybar_sni** %7, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @sni_check_msg_sender(%struct.swaybar_sni* %18, i32* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  ret i32 %20
}

declare dso_local i32 @sni_get_property_async(%struct.swaybar_sni*, i8*, i8*, i32*) #1

declare dso_local i32 @sni_check_msg_sender(%struct.swaybar_sni*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
