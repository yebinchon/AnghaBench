; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_toolbar.c_TestButtonSpacing.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_toolbar.c_TestButtonSpacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@TOOLBARCLASSNAMEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 84, i32 101, i32 115, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"CreateWindowEx failed\0A\00", align 1
@TB_GETMETRICS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Got %d result\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Got %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Got %d\0A\00", align 1
@TBMF_PAD = common dso_local global i32 0, align 4
@TBMF_BARPAD = common dso_local global i32 0, align 4
@TBMF_BUTTONSPACING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Got %lu result\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestButtonSpacing() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @TOOLBARCLASSNAMEW, align 4
  %5 = call i32* @CreateWindowExW(i32 0, i32 %4, i8* bitcast ([5 x i32]* @.str to i8*), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @memset(%struct.TYPE_3__* %2, i32 0, i32 24)
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* @TB_GETMETRICS, align 4
  %13 = ptrtoint %struct.TYPE_3__* %2 to i32
  %14 = call i32 @SendMessageW(i32* %11, i32 %12, i32 0, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 24, i32* %34, align 4
  %35 = load i32, i32* @TBMF_PAD, align 4
  %36 = load i32, i32* @TBMF_BARPAD, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @TBMF_BUTTONSPACING, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @TB_GETMETRICS, align 4
  %43 = ptrtoint %struct.TYPE_3__* %2 to i32
  %44 = call i32 @SendMessageW(i32* %41, i32 %42, i32 0, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TBMF_PAD, align 4
  %53 = load i32, i32* @TBMF_BARPAD, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @TBMF_BUTTONSPACING, align 4
  %56 = or i32 %54, %55
  %57 = icmp eq i32 %51, %56
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 7
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 6
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  ret void
}

declare dso_local i32* @CreateWindowExW(i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @SendMessageW(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
