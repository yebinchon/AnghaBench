; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_listbox.c_listbox_query.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_listbox.c_listbox_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listbox_stat = type { i8*, i8*, i8*, i8* }

@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_GETANCHORINDEX = common dso_local global i32 0, align 4
@LB_GETCARETINDEX = common dso_local global i32 0, align 4
@LB_GETSELCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.listbox_stat*)* @listbox_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listbox_query(i32 %0, %struct.listbox_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.listbox_stat*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.listbox_stat* %1, %struct.listbox_stat** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @LB_GETCURSEL, align 4
  %7 = call i8* @SendMessageA(i32 %5, i32 %6, i32 0, i32 0)
  %8 = load %struct.listbox_stat*, %struct.listbox_stat** %4, align 8
  %9 = getelementptr inbounds %struct.listbox_stat, %struct.listbox_stat* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @LB_GETANCHORINDEX, align 4
  %12 = call i8* @SendMessageA(i32 %10, i32 %11, i32 0, i32 0)
  %13 = load %struct.listbox_stat*, %struct.listbox_stat** %4, align 8
  %14 = getelementptr inbounds %struct.listbox_stat, %struct.listbox_stat* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @LB_GETCARETINDEX, align 4
  %17 = call i8* @SendMessageA(i32 %15, i32 %16, i32 0, i32 0)
  %18 = load %struct.listbox_stat*, %struct.listbox_stat** %4, align 8
  %19 = getelementptr inbounds %struct.listbox_stat, %struct.listbox_stat* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @LB_GETSELCOUNT, align 4
  %22 = call i8* @SendMessageA(i32 %20, i32 %21, i32 0, i32 0)
  %23 = load %struct.listbox_stat*, %struct.listbox_stat** %4, align 8
  %24 = getelementptr inbounds %struct.listbox_stat, %struct.listbox_stat* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  ret void
}

declare dso_local i8* @SendMessageA(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
