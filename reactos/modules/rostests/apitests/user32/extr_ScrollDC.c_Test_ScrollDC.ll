; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_ScrollDC.c_Test_ScrollDC.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_ScrollDC.c_Test_ScrollDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i32] [i32 66, i32 85, i32 84, i32 84, i32 79, i32 78, i32 0], align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 84, i32 101, i32 115, i32 116, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 0], align 4
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@NULLREGION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Expected NULLREGION, got %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"ScrollDC failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ScrollDC successed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_ScrollDC() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %8 = load i32, i32* @WS_VISIBLE, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @CreateWindowW(i8* bitcast ([7 x i32]* @.str to i8*), i8* bitcast ([11 x i32]* @.str.1 to i8*), i32 %9, i32 100, i32 100, i32 100, i32 100, i32* null, i32* null, i32 0, i32 0)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @UpdateWindow(i32 %11)
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @GetDC(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %15, i32** %4, align 8
  %16 = load i32, i32* %1, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* @FALSE, align 8
  %19 = call i32 @GetUpdateRgn(i32 %16, i32* %17, i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NULLREGION, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @ScrollDC(i32 %26, i32 0, i32 0, i32* null, %struct.TYPE_3__* null, i32* %27, i32* null)
  %29 = load i64, i64* @TRUE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @DeleteObject(i32* %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @ScrollDC(i32 %35, i32 50, i32 0, i32* null, %struct.TYPE_3__* null, i32* inttoptr (i64 305419896 to i32*), i32* null)
  %37 = load i64, i64* @FALSE, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* %3, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @ScrollDC(i32 %41, i32 50, i32 0, i32* null, %struct.TYPE_3__* null, i32* %42, i32* null)
  %44 = load i64, i64* @FALSE, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %48, i32** %4, align 8
  %49 = load i32, i32* %1, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* @FALSE, align 8
  %52 = call i32 @GetUpdateRgn(i32 %49, i32* %50, i64 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @NULLREGION, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @ScrollDC(i32 %59, i32 50, i32 0, i32* null, %struct.TYPE_3__* null, i32* null, i32* inttoptr (i64 1 to i32*))
  %61 = load i64, i64* @FALSE, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %1, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i64, i64* @FALSE, align 8
  %68 = call i32 @GetUpdateRgn(i32 %65, i32* %66, i64 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @NULLREGION, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 50, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 100, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 100, i32* %78, align 8
  %79 = load i32, i32* %3, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = call i64 @ScrollDC(i32 %79, i32 50, i32 0, i32* null, %struct.TYPE_3__* %5, i32* %80, i32* null)
  %82 = load i64, i64* @TRUE, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* %1, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = load i64, i64* @FALSE, align 8
  %89 = call i32 @GetUpdateRgn(i32 %86, i32* %87, i64 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @NULLREGION, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 50, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 100, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 100, i32* %99, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = call i64 @ScrollDC(i32 %100, i32 50, i32 50, i32* null, %struct.TYPE_3__* %5, i32* %101, i32* null)
  %103 = load i64, i64* @TRUE, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* %1, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = load i64, i64* @FALSE, align 8
  %110 = call i32 @GetUpdateRgn(i32 %107, i32* %108, i64 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @NULLREGION, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %6, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %118 = load i32, i32* @WS_VISIBLE, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @CreateWindowW(i8* bitcast ([7 x i32]* @.str to i8*), i8* bitcast ([11 x i32]* @.str.1 to i8*), i32 %119, i32 30, i32 160, i32 100, i32 100, i32* null, i32* null, i32 0, i32 0)
  store i32 %120, i32* %2, align 4
  %121 = load i32, i32* %2, align 4
  %122 = call i32 @UpdateWindow(i32 %121)
  %123 = load i32, i32* %1, align 4
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @ReleaseDC(i32 %123, i32 %124)
  %126 = load i32, i32* %1, align 4
  %127 = call i32 @DestroyWindow(i32 %126)
  %128 = load i32, i32* %2, align 4
  %129 = call i32 @DestroyWindow(i32 %128)
  ret void
}

declare dso_local i32 @CreateWindowW(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @UpdateWindow(i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @GetUpdateRgn(i32, i32*, i64) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @ScrollDC(i32, i32, i32, i32*, %struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
