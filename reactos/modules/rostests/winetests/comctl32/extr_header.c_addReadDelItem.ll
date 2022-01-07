; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_header.c_addReadDelItem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_header.c_addReadDelItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@HDM_INSERTITEMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Adding item failed\0A\00", align 1
@HDM_GETITEMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Getting item data failed\0A\00", align 1
@HDM_DELETEITEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Deleting item failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*, i32, %struct.TYPE_5__*)* @addReadDelItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addReadDelItem(i32 %0, %struct.TYPE_5__* %1, i32 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @HDM_INSERTITEMA, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = ptrtoint %struct.TYPE_5__* %11 to i32
  %13 = call i32 @SendMessageA(i32 %9, i32 %10, i32 0, i32 %12)
  %14 = icmp ne i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = call i32 @ZeroMemory(%struct.TYPE_5__* %17, i32 4)
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @HDM_GETITEMA, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = ptrtoint %struct.TYPE_5__* %24 to i32
  %26 = call i32 @SendMessageA(i32 %22, i32 %23, i32 0, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @HDM_DELETEITEM, align 4
  %32 = call i32 @SendMessageA(i32 %30, i32 %31, i32 0, i32 0)
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
