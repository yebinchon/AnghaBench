; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_listbox.c_test_item_height.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_listbox.c_test_item_height.c"
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
@WC_LISTBOXA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"TestList\00", align 1
@LBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Unexpected item height %d, expected %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_item_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_item_height() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @create_listbox(i32 0, i32 0)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @DCX_CACHE, align 4
  %9 = call i32 @GetDCEx(i32 %7, i32 0, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @OBJ_FONT, align 4
  %15 = call i64 @GetCurrentObject(i32 %13, i32 %14)
  store i64 %15, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @GetTextMetricsA(i32 %19, %struct.TYPE_3__* %2)
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ReleaseDC(i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @WM_SETFONT, align 4
  %27 = load i64, i64* %3, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i64 @SendMessageA(i32 %25, i32 %26, i32 %28, i32 0)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @LB_GETITEMHEIGHT, align 4
  %35 = call i64 @SendMessageA(i32 %33, i32 %34, i32 0, i32 0)
  store i64 %35, i64* %1, align 8
  %36 = load i64, i64* %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %41, i64 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @DestroyWindow(i32 %45)
  %47 = load i32, i32* @WC_LISTBOXA, align 4
  %48 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %49 = call i32 @CreateWindowA(i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32 0, i32 0, i32 100, i32 100, i32* null, i32* null, i32* null, i32 0)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @LB_GETITEMHEIGHT, align 4
  %52 = call i64 @SendMessageA(i32 %50, i32 %51, i32 0, i32 0)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %0
  %56 = load i64, i64* %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %56, %58
  br label %60

60:                                               ; preds = %55, %0
  %61 = phi i1 [ false, %0 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %63, i64 %65)
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @LB_GETITEMHEIGHT, align 4
  %69 = call i64 @SendMessageA(i32 %67, i32 %68, i32 5, i32 0)
  store i64 %69, i64* %1, align 8
  %70 = load i64, i64* %1, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = load i64, i64* %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %73, %75
  br label %77

77:                                               ; preds = %72, %60
  %78 = phi i1 [ false, %60 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %1, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %80, i64 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @LB_GETITEMHEIGHT, align 4
  %86 = call i64 @SendMessageA(i32 %84, i32 %85, i32 -5, i32 0)
  store i64 %86, i64* %1, align 8
  %87 = load i64, i64* %1, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %77
  %90 = load i64, i64* %1, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sle i64 %90, %92
  br label %94

94:                                               ; preds = %89, %77
  %95 = phi i1 [ false, %77 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = load i64, i64* %1, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %97, i64 %99)
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @DestroyWindow(i32 %101)
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

declare dso_local i32 @CreateWindowA(i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
