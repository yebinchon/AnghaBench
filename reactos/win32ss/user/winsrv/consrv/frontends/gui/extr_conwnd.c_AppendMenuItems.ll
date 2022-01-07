; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/frontends/gui/extr_conwnd.c_AppendMenuItems.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/frontends/gui/extr_conwnd.c_AppendMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, %struct.TYPE_3__* }

@ConSrvDllInstance = common dso_local global i32 0, align 4
@MF_STRING = common dso_local global i32 0, align 4
@MF_POPUP = common dso_local global i32 0, align 4
@MF_SEPARATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @AppendMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AppendMenuItems(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [255 x i32], align 16
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %101, %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, -1
  br i1 %15, label %16, label %73

16:                                               ; preds = %9
  %17 = load i32, i32* @ConSrvDllInstance, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds [255 x i32], [255 x i32]* %7, i64 0, i64 0
  %24 = getelementptr inbounds [255 x i32], [255 x i32]* %7, i64 0, i64 0
  %25 = call i32 @ARRAYSIZE(i32* %24)
  %26 = call i64 @LoadStringW(i32 %17, i64 %22, i32* %23, i32 %25)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %16
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %28
  %36 = call i32* (...) @CreatePopupMenu()
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call i32 @AppendMenuItems(i32* %40, %struct.TYPE_3__* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @MF_STRING, align 4
  %49 = load i32, i32* @MF_POPUP, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %8, align 8
  %52 = ptrtoint i32* %51 to i64
  %53 = getelementptr inbounds [255 x i32], [255 x i32]* %7, i64 0, i64 0
  %54 = call i32 @AppendMenuW(i32* %47, i32 %50, i64 %52, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %39
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @DestroyMenu(i32* %57)
  br label %59

59:                                               ; preds = %56, %39
  br label %60

60:                                               ; preds = %59, %35
  br label %71

61:                                               ; preds = %28
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @MF_STRING, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds [255 x i32], [255 x i32]* %7, i64 0, i64 0
  %70 = call i32 @AppendMenuW(i32* %62, i32 %63, i64 %68, i32* %69)
  br label %71

71:                                               ; preds = %61, %60
  br label %72

72:                                               ; preds = %71, %16
  br label %77

73:                                               ; preds = %9
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* @MF_SEPARATOR, align 4
  %76 = call i32 @AppendMenuW(i32* %74, i32 %75, i64 0, i32* null)
  br label %77

77:                                               ; preds = %73, %72
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %6, align 8
  br label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %80
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = icmp eq %struct.TYPE_3__* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br label %101

101:                                              ; preds = %94, %87, %80
  %102 = phi i1 [ false, %87 ], [ false, %80 ], [ %100, %94 ]
  %103 = xor i1 %102, true
  br i1 %103, label %9, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @LoadStringW(i32, i64, i32*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32* @CreatePopupMenu(...) #1

declare dso_local i32 @AppendMenuW(i32*, i32, i64, i32*) #1

declare dso_local i32 @DestroyMenu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
