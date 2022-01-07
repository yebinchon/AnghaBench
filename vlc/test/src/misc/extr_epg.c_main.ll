; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_epg.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_epg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"--test %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ABCDEF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32 (...) @test_init()
  store i32 1, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %2, align 4
  %7 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %5)
  %8 = call i32* @vlc_epg_New(i32 0, i32 0)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @assert(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @EPG_ADD(i32* %11, i32 42, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @EPG_ADD(i32* %13, i32 62, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @EPG_ADD(i32* %15, i32 82, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @EPG_ADD(i32* %17, i32 102, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @print_order(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @assert_events(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @assert_current(i32* %23, i8* null)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @vlc_epg_SetCurrent(i32* %25, i32 82)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @assert_current(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @vlc_epg_Delete(i32* %29)
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %31)
  %34 = call i32* @vlc_epg_New(i32 0, i32 0)
  store i32* %34, i32** %3, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @assert(i32* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @EPG_ADD(i32* %37, i32 82, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @EPG_ADD(i32* %39, i32 62, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @EPG_ADD(i32* %41, i32 102, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @EPG_ADD(i32* %43, i32 42, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @print_order(i32* %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @assert_events(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @vlc_epg_Delete(i32* %49)
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  %53 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %51)
  %54 = call i32* @vlc_epg_New(i32 0, i32 0)
  store i32* %54, i32** %3, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @assert(i32* %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @EPG_ADD(i32* %57, i32 142, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @EPG_ADD(i32* %59, i32 122, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @EPG_ADD(i32* %61, i32 102, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @EPG_ADD(i32* %63, i32 82, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @EPG_ADD(i32* %65, i32 42, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @EPG_ADD(i32* %67, i32 62, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @print_order(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @assert_events(i32* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @vlc_epg_Delete(i32* %73)
  %75 = load i32, i32* %2, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %2, align 4
  %77 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %75)
  %78 = call i32* @vlc_epg_New(i32 0, i32 0)
  store i32* %78, i32** %3, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @assert(i32* %79)
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @EPG_ADD(i32* %81, i32 62, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @EPG_ADD(i32* %83, i32 62, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @EPG_ADD(i32* %85, i32 42, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @vlc_epg_SetCurrent(i32* %87, i32 62)
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @EPG_ADD(i32* %89, i32 82, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @EPG_ADD(i32* %91, i32 62, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @EPG_ADD(i32* %93, i32 102, i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @print_order(i32* %95)
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @assert_events(i32* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @assert_current(i32* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @vlc_epg_Delete(i32* %101)
  ret i32 0
}

declare dso_local i32 @test_init(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32* @vlc_epg_New(i32, i32) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @EPG_ADD(i32*, i32, i32, i8*) #1

declare dso_local i32 @print_order(i32*) #1

declare dso_local i32 @assert_events(i32*, i8*, i32) #1

declare dso_local i32 @assert_current(i32*, i8*) #1

declare dso_local i32 @vlc_epg_SetCurrent(i32*, i32) #1

declare dso_local i32 @vlc_epg_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
