; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_listbox.c_check_item_height.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_listbox.c_check_item_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@DCX_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Can't get hdc\0A\00", align 1
@OBJ_FONT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't get the current font\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Can't read font metrics\0A\00", align 1
@WM_SETFONT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Can't set font\0A\00", align 1
@LB_GETITEMHEIGHT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Item height wrong, got %d, expecting %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"LISTBOX\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"TestList\00", align 1
@LBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"itemHeight %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_item_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_item_height() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i64, align 8
  %6 = call i32 @create_listbox(i32 0, i32 0)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @DCX_CACHE, align 4
  %9 = call i32 @GetDCEx(i32 %7, i32 0, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @OBJ_FONT, align 4
  %15 = call i64 @GetCurrentObject(i32 %13, i32 %14)
  store i64 %15, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @GetTextMetricsA(i32 %19, %struct.TYPE_3__* %4)
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @ReleaseDC(i32 %22, i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @WM_SETFONT, align 4
  %27 = load i64, i64* %3, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i64 @SendMessageA(i32 %25, i32 %26, i32 %28, i32 0)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @LB_GETITEMHEIGHT, align 4
  %35 = call i64 @SendMessageA(i32 %33, i32 %34, i32 0, i32 0)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %41, i64 %43)
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @DestroyWindow(i32 %45)
  %47 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %48 = call i32 @CreateWindowA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %47, i32 0, i32 0, i32 100, i32 100, i32* null, i32* null, i32* null, i32 0)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @LB_GETITEMHEIGHT, align 4
  %51 = call i64 @SendMessageA(i32 %49, i32 %50, i32 0, i32 0)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %52, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %5, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @LB_GETITEMHEIGHT, align 4
  %61 = call i64 @SendMessageA(i32 %59, i32 %60, i32 5, i32 0)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %62, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %5, align 8
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* @LB_GETITEMHEIGHT, align 4
  %71 = call i64 @SendMessageA(i32 %69, i32 %70, i32 -5, i32 0)
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %72, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %5, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @DestroyWindow(i32 %79)
  ret void
}

declare dso_local i32 @create_listbox(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetDCEx(i32, i32, i32) #1

declare dso_local i64 @GetCurrentObject(i32, i32) #1

declare dso_local i32 @GetTextMetricsA(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i64 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

declare dso_local i32 @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
