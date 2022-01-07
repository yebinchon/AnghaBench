; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_header.c_setItemUnicodeNotify.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_header.c_setItemUnicodeNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@HDI_TEXT = common dso_local global i8* null, align 8
@HDN_ITEMCHANGINGW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HDN_ITEMCHANGEDW = common dso_local global i32 0, align 4
@HDM_SETITEMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"setItemUnicodeNotify(): not all expected notifies were received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @setItemUnicodeNotify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setItemUnicodeNotify(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** @HDI_TEXT, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i8*, i8** @HDI_TEXT, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @HDN_ITEMCHANGINGW, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = bitcast %struct.TYPE_4__* %11 to %struct.TYPE_5__*
  %24 = call i32 @expect_notify(i32 %21, i32 %22, %struct.TYPE_5__* %23)
  %25 = load i32, i32* @HDN_ITEMCHANGEDW, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = bitcast %struct.TYPE_4__* %11 to %struct.TYPE_5__*
  %28 = call i32 @expect_notify(i32 %25, i32 %26, %struct.TYPE_5__* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @HDM_SETITEMA, align 4
  %31 = load i32, i32* %6, align 4
  %32 = ptrtoint %struct.TYPE_5__* %10 to i32
  %33 = call i32 @SendMessageA(i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = call i32 (...) @notifies_received()
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local i32 @expect_notify(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @notifies_received(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
