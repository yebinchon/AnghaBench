; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_is_extension_present.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_is_extension_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@xcb = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @x11_is_extension_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x11_is_extension_present(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xcb, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @xcb_query_extension(i32 %8, i32 %10, i8* %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xcb, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.TYPE_5__* @xcb_query_extension_reply(i32 %15, i32 %16, i32* null)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = call i32 @free(%struct.TYPE_5__* %21)
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @xcb_query_extension(i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_5__* @xcb_query_extension_reply(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
