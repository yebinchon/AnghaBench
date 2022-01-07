; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetRandomRgn.c_Test_GetRandomRgn_Params.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetRandomRgn.c_Test_GetRandomRgn_Params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Coun't create a dc\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Coun't create a region\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"wrong error: %ld\0A\00", align 1
@CLIPRGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_GetRandomRgn_Params() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i32* @CreateCompatibleDC(i32 0)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %150

9:                                                ; preds = %0
  %10 = call i32* @CreateRectRgn(i32 11, i32 17, i32 23, i32 42)
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %150

15:                                               ; preds = %9
  %16 = call i32 @SetLastError(i32 -1160008448)
  %17 = call i32 @GetRandomRgn(i32* null, i32* null, i32 0)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ok_int(i32 %18, i32 -1)
  %20 = call i32 (...) @GetLastError()
  %21 = icmp eq i32 %20, -1160008448
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = call i32 (...) @GetLastError()
  %24 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %25 = icmp eq i32 %23, %24
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi i1 [ true, %15 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = call i32 @SetLastError(i32 -1160008448)
  %32 = load i32, i32* @CLIPRGN, align 4
  %33 = call i32 @GetRandomRgn(i32* null, i32* null, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @ok_int(i32 %34, i32 -1)
  %36 = call i32 (...) @GetLastError()
  %37 = icmp eq i32 %36, -1160008448
  br i1 %37, label %42, label %38

38:                                               ; preds = %26
  %39 = call i32 (...) @GetLastError()
  %40 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %41 = icmp eq i32 %39, %40
  br label %42

42:                                               ; preds = %38, %26
  %43 = phi i1 [ true, %26 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 (...) @GetLastError()
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = call i32 @SetLastError(i32 -1160008448)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @GetRandomRgn(i32* null, i32* %48, i32 0)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @ok_int(i32 %50, i32 -1)
  %52 = call i32 (...) @GetLastError()
  %53 = icmp eq i32 %52, -1160008448
  br i1 %53, label %58, label %54

54:                                               ; preds = %42
  %55 = call i32 (...) @GetLastError()
  %56 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %57 = icmp eq i32 %55, %56
  br label %58

58:                                               ; preds = %54, %42
  %59 = phi i1 [ true, %42 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 (...) @GetLastError()
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = call i32 @SetLastError(i32 -1160008448)
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* @CLIPRGN, align 4
  %66 = call i32 @GetRandomRgn(i32* null, i32* %64, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @ok_int(i32 %67, i32 -1)
  %69 = call i32 (...) @GetLastError()
  %70 = icmp eq i32 %69, -1160008448
  br i1 %70, label %75, label %71

71:                                               ; preds = %58
  %72 = call i32 (...) @GetLastError()
  %73 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %74 = icmp eq i32 %72, %73
  br label %75

75:                                               ; preds = %71, %58
  %76 = phi i1 [ true, %58 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = call i32 @SetLastError(i32 -1160008448)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @GetRandomRgn(i32* %81, i32* null, i32 0)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @ok_int(i32 %83, i32 0)
  %85 = call i32 @ok_err(i32 -1160008448)
  %86 = call i32 @SetLastError(i32 -1160008448)
  %87 = load i32*, i32** %1, align 8
  %88 = load i32, i32* @CLIPRGN, align 4
  %89 = call i32 @GetRandomRgn(i32* %87, i32* null, i32 %88)
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @ok_int(i32 %90, i32 0)
  %92 = call i32 @ok_err(i32 -1160008448)
  %93 = call i32 @SetLastError(i32 -1160008448)
  %94 = load i32*, i32** %1, align 8
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @GetRandomRgn(i32* %94, i32* %95, i32 0)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @ok_int(i32 %97, i32 0)
  %99 = call i32 @ok_err(i32 -1160008448)
  %100 = call i32 @SetLastError(i32 -1160008448)
  %101 = load i32*, i32** %1, align 8
  %102 = load i32*, i32** %2, align 8
  %103 = call i32 @GetRandomRgn(i32* %101, i32* %102, i32 6)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @ok_int(i32 %104, i32 0)
  %106 = call i32 @ok_err(i32 -1160008448)
  %107 = call i32 @SetLastError(i32 -1160008448)
  %108 = load i32*, i32** %1, align 8
  %109 = load i32*, i32** %2, align 8
  %110 = call i32 @GetRandomRgn(i32* %108, i32* %109, i32 27)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @ok_int(i32 %111, i32 0)
  %113 = call i32 @ok_err(i32 -1160008448)
  %114 = call i32 @SetLastError(i32 -1160008448)
  %115 = load i32*, i32** %1, align 8
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @GetRandomRgn(i32* %115, i32* %116, i32 -1)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @ok_int(i32 %118, i32 0)
  %120 = call i32 @ok_err(i32 -1160008448)
  %121 = call i32 @SetLastError(i32 -1160008448)
  %122 = load i32*, i32** %1, align 8
  %123 = load i32*, i32** %2, align 8
  %124 = load i32, i32* @CLIPRGN, align 4
  %125 = call i32 @GetRandomRgn(i32* %122, i32* %123, i32 %124)
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @ok_int(i32 %126, i32 0)
  %128 = call i32 @ok_err(i32 -1160008448)
  %129 = call i32 @SetLastError(i32 -1160008448)
  %130 = load i32*, i32** %2, align 8
  %131 = load i32, i32* @CLIPRGN, align 4
  %132 = call i32 @GetRandomRgn(i32* inttoptr (i64 291 to i32*), i32* %130, i32 %131)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @ok_int(i32 %133, i32 -1)
  %135 = call i32 (...) @GetLastError()
  %136 = icmp eq i32 %135, -1160008448
  br i1 %136, label %141, label %137

137:                                              ; preds = %75
  %138 = call i32 (...) @GetLastError()
  %139 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %140 = icmp eq i32 %138, %139
  br label %141

141:                                              ; preds = %137, %75
  %142 = phi i1 [ true, %75 ], [ %140, %137 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 (...) @GetLastError()
  %145 = call i32 @ok(i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load i32*, i32** %2, align 8
  %147 = call i32 @DeleteObject(i32* %146)
  %148 = load i32*, i32** %1, align 8
  %149 = call i32 @DeleteDC(i32* %148)
  br label %150

150:                                              ; preds = %141, %13, %7
  ret void
}

declare dso_local i32* @CreateCompatibleDC(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetRandomRgn(i32*, i32*, i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok_err(i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @DeleteDC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
