; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_IOleCommandTarget.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_IOleCommandTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"got (0x%08x)\0A\00", align 1
@IID_IShellView = common dso_local global i32 0, align 4
@IID_IOleCommandTarget = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Got 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@OLECMDERR_E_UNKNOWNGROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IOleCommandTarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IOleCommandTarget() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = call i64 @SHGetDesktopFolder(i32** %1)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = bitcast i32** %2 to i8**
  %15 = call i64 @IShellFolder_CreateViewObject(i32* %13, i32* null, i32* @IID_IShellView, i8** %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @SUCCEEDED(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %87

25:                                               ; preds = %0
  %26 = load i32*, i32** %2, align 8
  %27 = bitcast i32** %3 to i8**
  %28 = call i64 @IShellView_QueryInterface(i32* %26, i32* @IID_IOleCommandTarget, i8** %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @E_NOINTERFACE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @broken(i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %32, %25
  %40 = phi i1 [ true, %25 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @SUCCEEDED(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %39
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @IOleCommandTarget_QueryStatus(i32* %48, i32* null, i32 0, %struct.TYPE_3__* null, i32* null)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @E_INVALIDARG, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @IOleCommandTarget_QueryStatus(i32* %57, i32* null, i32 0, %struct.TYPE_3__* %5, i32* null)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @OLECMDERR_E_UNKNOWNGROUP, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @IOleCommandTarget_QueryStatus(i32* %66, i32* null, i32 1, %struct.TYPE_3__* %5, i32* null)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @OLECMDERR_E_UNKNOWNGROUP, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i64 @IOleCommandTarget_Exec(i32* %74, i32* null, i32 0, i32 0, i32* null, i32* null)
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @OLECMDERR_E_UNKNOWNGROUP, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @IOleCommandTarget_Release(i32* %82)
  br label %84

84:                                               ; preds = %47, %39
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @IShellView_Release(i32* %85)
  br label %87

87:                                               ; preds = %84, %0
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @IShellFolder_Release(i32* %88)
  ret void
}

declare dso_local i64 @SHGetDesktopFolder(i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IShellFolder_CreateViewObject(i32*, i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IShellView_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @IOleCommandTarget_QueryStatus(i32*, i32*, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i64 @IOleCommandTarget_Exec(i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @IOleCommandTarget_Release(i32*) #1

declare dso_local i32 @IShellView_Release(i32*) #1

declare dso_local i32 @IShellFolder_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
