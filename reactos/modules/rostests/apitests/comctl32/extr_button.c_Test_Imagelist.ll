; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_button.c_Test_Imagelist.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_button.c_Test_Imagelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [7 x i32] [i32 66, i32 117, i32 116, i32 116, i32 111, i32 110, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 84, i32 101, i32 115, i32 116, i32 50, i32 0], align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Expected CreateWindowW to succeed\0A\00", align 1
@BCM_GETIMAGELIST = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Expected BCM_GETIMAGELIST to succeed\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Expected 0 himl\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Expected 0 uAlign\0A\00", align 1
@BCM_SETIMAGELIST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"Expected BCM_SETIMAGELIST to fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_Imagelist() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_2__, align 8
  %4 = call i32* @CreateWindowW(i8* bitcast ([7 x i32]* @.str to i8*), i8* bitcast ([6 x i32]* @.str.1 to i8*), i32 0, i32 10, i32 10, i32 100, i32 100, i32 0, i32* null, i32* null, i32* null)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* @BCM_GETIMAGELIST, align 4
  %11 = ptrtoint %struct.TYPE_2__* %3 to i32
  %12 = call i64 @SendMessageW(i32* %9, i32 %10, i32 0, i32 %11)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @TRUE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ok_rect(i32 %29, i32 0, i32 0, i32 0, i32 0)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 2
  %32 = call i32 @SetRect(i32* %31, i32 0, i32 0, i32 0, i32 1)
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @BCM_SETIMAGELIST, align 4
  %35 = ptrtoint %struct.TYPE_2__* %3 to i32
  %36 = call i64 @SendMessageW(i32* %33, i32 %34, i32 0, i32 %35)
  store i64 %36, i64* %2, align 8
  %37 = load i64, i64* %2, align 8
  %38 = load i64, i64* @FALSE, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i64 57005, i64* %42, align 8
  %43 = load i32*, i32** %1, align 8
  %44 = load i32, i32* @BCM_SETIMAGELIST, align 4
  %45 = ptrtoint %struct.TYPE_2__* %3 to i32
  %46 = call i64 @SendMessageW(i32* %43, i32 %44, i32 0, i32 %45)
  store i64 %46, i64* %2, align 8
  %47 = load i64, i64* %2, align 8
  %48 = load i64, i64* @TRUE, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %52 = load i32*, i32** %1, align 8
  %53 = load i32, i32* @BCM_GETIMAGELIST, align 4
  %54 = ptrtoint %struct.TYPE_2__* %3 to i32
  %55 = call i64 @SendMessageW(i32* %52, i32 %53, i32 0, i32 %54)
  store i64 %55, i64* %2, align 8
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* @TRUE, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 57005
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ok_rect(i32 %72, i32 0, i32 0, i32 0, i32 1)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load i32*, i32** %1, align 8
  %76 = load i32, i32* @BCM_SETIMAGELIST, align 4
  %77 = ptrtoint %struct.TYPE_2__* %3 to i32
  %78 = call i64 @SendMessageW(i32* %75, i32 %76, i32 0, i32 %77)
  store i64 %78, i64* %2, align 8
  %79 = load i64, i64* %2, align 8
  %80 = load i64, i64* @FALSE, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @DestroyWindow(i32* %84)
  ret void
}

declare dso_local i32* @CreateWindowW(i8*, i8*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

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
