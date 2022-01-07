; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_dc_values.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_dc_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"CreateDC failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"initial color %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"wrong color %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"initial extra %d\0A\00", align 1
@MM_LOMETRIC = common dso_local global i32 0, align 4
@MM_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_dc_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dc_values() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32* @CreateDCA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @SetBkColor(i32* %9, i32 305419896)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 16777215
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %2, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @GetBkColor(i32* %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 305419896
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @SetBkColor(i32* %23, i32 -1)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %25, 305419896
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @GetBkColor(i32* %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, -1
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %2, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @SetBkColor(i32* %37, i32 0)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, -1
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %2, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @GetBkColor(i32* %44)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %2, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @SetTextColor(i32* %51, i32 -1122868)
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* %2, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %2, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @GetTextColor(i32* %58)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %60, -1122868
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %2, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @SetTextColor(i32* %65, i32 -1)
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = icmp eq i32 %67, -1122868
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %2, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @GetTextColor(i32* %72)
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* %2, align 4
  %75 = icmp eq i32 %74, -1
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %2, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @SetTextColor(i32* %79, i32 0)
  store i32 %80, i32* %2, align 4
  %81 = load i32, i32* %2, align 4
  %82 = icmp eq i32 %81, -1
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %2, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @GetTextColor(i32* %86)
  store i32 %87, i32* %2, align 4
  %88 = load i32, i32* %2, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %2, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @GetTextCharacterExtra(i32* %93)
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %3, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @SetTextCharacterExtra(i32* %100, i32 123)
  %102 = load i32*, i32** %1, align 8
  %103 = call i32 @GetTextCharacterExtra(i32* %102)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp eq i32 %104, 123
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load i32*, i32** %1, align 8
  %110 = load i32, i32* @MM_LOMETRIC, align 4
  %111 = call i32 @SetMapMode(i32* %109, i32 %110)
  %112 = load i32*, i32** %1, align 8
  %113 = call i32 @GetTextCharacterExtra(i32* %112)
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %3, align 4
  %115 = icmp eq i32 %114, 123
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %3, align 4
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i32*, i32** %1, align 8
  %120 = load i32, i32* @MM_TEXT, align 4
  %121 = call i32 @SetMapMode(i32* %119, i32 %120)
  %122 = load i32*, i32** %1, align 8
  %123 = call i32 @GetTextCharacterExtra(i32* %122)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = icmp eq i32 %124, 123
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %3, align 4
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %1, align 8
  %130 = call i32 @DeleteDC(i32* %129)
  ret void
}

declare dso_local i32* @CreateDCA(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetBkColor(i32*, i32) #1

declare dso_local i32 @GetBkColor(i32*) #1

declare dso_local i32 @SetTextColor(i32*, i32) #1

declare dso_local i32 @GetTextColor(i32*) #1

declare dso_local i32 @GetTextCharacterExtra(i32*) #1

declare dso_local i32 @SetTextCharacterExtra(i32*, i32) #1

declare dso_local i32 @SetMapMode(i32*, i32) #1

declare dso_local i32 @DeleteDC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
