; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_test_height_selection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_test_height_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_data = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@test_height_selection.tahoma = internal constant [11 x %struct.font_data] [%struct.font_data { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 -12, i32 129, i32 14, i32 12, i32 2, i32 2, i32 0, i32 96, i32 128 }, %struct.font_data { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 -24, i32 129, i32 29, i32 24, i32 5, i32 5, i32 0, i32 96, i32 128 }, %struct.font_data { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 -48, i32 129, i32 58, i32 48, i32 10, i32 10, i32 0, i32 96, i32 128 }, %struct.font_data { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 -96, i32 129, i32 116, i32 96, i32 20, i32 20, i32 0, i32 96, i32 128 }, %struct.font_data { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 -192, i32 129, i32 232, i32 192, i32 40, i32 40, i32 0, i32 96, i32 128 }, %struct.font_data { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 12, i32 129, i32 12, i32 10, i32 2, i32 2, i32 0, i32 96, i32 128 }, %struct.font_data { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 24, i32 129, i32 24, i32 20, i32 4, i32 4, i32 0, i32 96, i32 128 }, %struct.font_data { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 48, i32 129, i32 48, i32 40, i32 8, i32 8, i32 0, i32 96, i32 128 }, %struct.font_data { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 96, i32 129, i32 96, i32 80, i32 16, i32 17, i32 0, i32 96, i32 130 }, %struct.font_data { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 192, i32 129, i32 192, i32 159, i32 33, i32 33, i32 0, i32 96, i32 128 }, %struct.font_data { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [7 x i8] c"Tahoma\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to create hdc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_height_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_height_selection() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* @CreateCompatibleDC(i32 0)
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = icmp ne i32* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @ok(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @test_height(i32* %7, %struct.font_data* getelementptr inbounds ([11 x %struct.font_data], [11 x %struct.font_data]* @test_height_selection.tahoma, i64 0, i64 0))
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @test_height_selection_vdmx(i32* %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @DeleteDC(i32* %11)
  ret void
}

declare dso_local i32* @CreateCompatibleDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @test_height(i32*, %struct.font_data*) #1

declare dso_local i32 @test_height_selection_vdmx(i32*) #1

declare dso_local i32 @DeleteDC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
