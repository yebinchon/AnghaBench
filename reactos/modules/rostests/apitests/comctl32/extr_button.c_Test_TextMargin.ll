; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_button.c_Test_TextMargin.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_button.c_Test_TextMargin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i32] [i32 66, i32 117, i32 116, i32 116, i32 111, i32 110, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 84, i32 101, i32 115, i32 116, i32 49, i32 0], align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Expected CreateWindowW to succeed\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@BCM_GETTEXTMARGIN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Expected BCM_GETTEXTMARGIN to succeed\0A\00", align 1
@BCM_SETTEXTMARGIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Expected BCM_SETTEXTMARGIN to succeed\0A\00", align 1
@BS_DEFPUSHBUTTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_TextMargin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* @CreateWindowW(i8* bitcast ([7 x i32]* @.str to i8*), i8* bitcast ([6 x i32]* @.str.1 to i8*), i32 0, i32 10, i32 10, i32 100, i32 100, i32 0, i32* null, i32* null, i32* null)
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @SetWindowTheme(i32* %9, i8* bitcast ([1 x i32]* @.str.3 to i8*), i8* bitcast ([1 x i32]* @.str.3 to i8*))
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @BCM_GETTEXTMARGIN, align 4
  %13 = ptrtoint i32* %1 to i32
  %14 = call i64 @SendMessageW(i32* %11, i32 %12, i32 0, i32 %13)
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @TRUE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @ok_rect(i32 %20, i32 1, i32 1, i32 1, i32 1)
  %22 = call i32 @SetRect(i32* %1, i32 0, i32 0, i32 0, i32 0)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @BCM_SETTEXTMARGIN, align 4
  %25 = ptrtoint i32* %1 to i32
  %26 = call i64 @SendMessageW(i32* %23, i32 %24, i32 0, i32 %25)
  store i64 %26, i64* %2, align 8
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @TRUE, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @BCM_GETTEXTMARGIN, align 4
  %34 = ptrtoint i32* %1 to i32
  %35 = call i64 @SendMessageW(i32* %32, i32 %33, i32 0, i32 %34)
  store i64 %35, i64* %2, align 8
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @TRUE, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @ok_rect(i32 %41, i32 0, i32 0, i32 0, i32 0)
  %43 = call i32 @SetRect(i32* %1, i32 -1, i32 -1, i32 -1, i32 -1)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @BCM_SETTEXTMARGIN, align 4
  %46 = ptrtoint i32* %1 to i32
  %47 = call i64 @SendMessageW(i32* %44, i32 %45, i32 0, i32 %46)
  store i64 %47, i64* %2, align 8
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @TRUE, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* @BCM_GETTEXTMARGIN, align 4
  %55 = ptrtoint i32* %1 to i32
  %56 = call i64 @SendMessageW(i32* %53, i32 %54, i32 0, i32 %55)
  store i64 %56, i64* %2, align 8
  %57 = load i64, i64* %2, align 8
  %58 = load i64, i64* @TRUE, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* %1, align 4
  %63 = call i32 @ok_rect(i32 %62, i32 -1, i32 -1, i32 -1, i32 -1)
  %64 = call i32 @SetRect(i32* %1, i32 1000, i32 1000, i32 1000, i32 1000)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @BCM_SETTEXTMARGIN, align 4
  %67 = ptrtoint i32* %1 to i32
  %68 = call i64 @SendMessageW(i32* %65, i32 %66, i32 0, i32 %67)
  store i64 %68, i64* %2, align 8
  %69 = load i64, i64* %2, align 8
  %70 = load i64, i64* @TRUE, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @BCM_GETTEXTMARGIN, align 4
  %76 = ptrtoint i32* %1 to i32
  %77 = call i64 @SendMessageW(i32* %74, i32 %75, i32 0, i32 %76)
  store i64 %77, i64* %2, align 8
  %78 = load i64, i64* %2, align 8
  %79 = load i64, i64* @TRUE, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @ok_rect(i32 %83, i32 1000, i32 1000, i32 1000, i32 1000)
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @DestroyWindow(i32* %85)
  %87 = load i32, i32* @BS_DEFPUSHBUTTON, align 4
  %88 = call i32* @CreateWindowW(i8* bitcast ([7 x i32]* @.str to i8*), i8* bitcast ([6 x i32]* @.str.1 to i8*), i32 %87, i32 10, i32 10, i32 100, i32 100, i32 0, i32* null, i32* null, i32* null)
  store i32* %88, i32** %3, align 8
  %89 = load i32*, i32** %3, align 8
  %90 = icmp ne i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @SetWindowTheme(i32* %93, i8* bitcast ([1 x i32]* @.str.3 to i8*), i8* bitcast ([1 x i32]* @.str.3 to i8*))
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* @BCM_GETTEXTMARGIN, align 4
  %97 = ptrtoint i32* %1 to i32
  %98 = call i64 @SendMessageW(i32* %95, i32 %96, i32 0, i32 %97)
  store i64 %98, i64* %2, align 8
  %99 = load i64, i64* %2, align 8
  %100 = load i64, i64* @TRUE, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* %1, align 4
  %105 = call i32 @ok_rect(i32 %104, i32 1, i32 1, i32 1, i32 1)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @DestroyWindow(i32* %106)
  ret void
}

declare dso_local i32* @CreateWindowW(i8*, i8*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SetWindowTheme(i32*, i8*, i8*) #1

declare dso_local i64 @SendMessageW(i32*, i32, i32, i32) #1

declare dso_local i32 @ok_rect(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
