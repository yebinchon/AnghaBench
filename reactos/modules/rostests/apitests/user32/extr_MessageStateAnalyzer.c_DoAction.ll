; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_MessageStateAnalyzer.c_DoAction.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_MessageStateAnalyzer.c_DoAction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Step %d: wParam was %p\0A\00", align 1
@s_iStep = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Step %d: lParam was %p\0A\00", align 1
@SW_HIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @DoAction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoAction(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %137 [
    i32 128, label %11
    i32 136, label %12
    i32 130, label %31
    i32 129, label %52
    i32 131, label %56
    i32 133, label %73
    i32 137, label %90
    i32 132, label %93
    i32 134, label %110
    i32 135, label %127
    i32 138, label %131
    i32 139, label %134
  ]

11:                                               ; preds = %4
  br label %137

12:                                               ; preds = %4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GetWindowRect(i32 %13, %struct.TYPE_3__* %9)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %16, %18
  %20 = call i32 @ok_long(i64 %19, i32 0)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %22, %24
  %26 = call i32 @ok_long(i64 %25, i32 0)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @IsWindowVisible(i32 %27)
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @ok_int(i32 %28, i32 %29)
  br label %137

31:                                               ; preds = %4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @GetWindowRect(i32 %32, %struct.TYPE_3__* %9)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %35, %37
  %39 = load i32, i32* @WIDTH, align 4
  %40 = call i32 @ok_long(i64 %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %42, %44
  %46 = load i32, i32* @HEIGHT, align 4
  %47 = call i32 @ok_long(i64 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @IsWindowVisible(i32 %48)
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @ok_int(i32 %49, i32 %50)
  br label %137

52:                                               ; preds = %4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SW_SHOWNORMAL, align 4
  %55 = call i32 @ShowWindow(i32 %53, i32 %54)
  br label %137

56:                                               ; preds = %4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* @s_iStep, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %60, i8* %63)
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, -1073741809
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* @s_iStep, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %68, i8* %71)
  br label %137

73:                                               ; preds = %4
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 2
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* @s_iStep, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %77, i8* %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* @s_iStep, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %85, i8* %88)
  br label %137

90:                                               ; preds = %4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @DestroyWindow(i32 %91)
  br label %137

93:                                               ; preds = %4
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* @s_iStep, align 4
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %97, i8* %100)
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, -1073741809
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* @s_iStep, align 4
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %105, i8* %108)
  br label %137

110:                                              ; preds = %4
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 1
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* @s_iStep, align 4
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %114, i8* %117)
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* @s_iStep, align 4
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %122, i8* %125)
  br label %137

127:                                              ; preds = %4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @SW_HIDE, align 4
  %130 = call i32 @ShowWindow(i32 %128, i32 %129)
  br label %137

131:                                              ; preds = %4
  %132 = call i32 (...) @GetDesktopWindow()
  %133 = call i32 @SetForegroundWindow(i32 %132)
  br label %137

134:                                              ; preds = %4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @SetForegroundWindow(i32 %135)
  br label %137

137:                                              ; preds = %4, %134, %131, %127, %110, %93, %90, %73, %56, %52, %31, %12, %11
  ret void
}

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ok_long(i64, i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @IsWindowVisible(i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i8*) #1

declare dso_local i32 @DestroyWindow(i32) #1

declare dso_local i32 @SetForegroundWindow(i32) #1

declare dso_local i32 @GetDesktopWindow(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
