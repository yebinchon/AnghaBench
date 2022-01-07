; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_SHCreateShellFolderViewEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_SHCreateShellFolderViewEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@S_OK = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"got (0x%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"psv = %p\0A\00", align 1
@IID_CDefView = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"refCount = %u\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHCreateShellFolderViewEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHCreateShellFolderViewEx() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = call i32* @SHGetDesktopFolder(i32** %1)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** @S_OK, align 8
  %10 = icmp eq i32* %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = call i32 @memset(%struct.TYPE_4__* %6, i32 0, i32 16)
  %15 = load i32*, i32** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32* %15, i32** %16, align 8
  store i32* null, i32** %2, align 8
  %17 = call i32* @SHCreateShellFolderViewEx(%struct.TYPE_4__* %6, i32** %2)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** @S_OK, align 8
  %20 = icmp eq i32* %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = bitcast i32** %4 to i8**
  %31 = call i32* @IShellView_QueryInterface(i32* %29, i32* @IID_CDefView, i8** %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** @S_OK, align 8
  %34 = icmp eq i32* %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = icmp eq i32* %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @IUnknown_Release(i32* %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32* @IShellView_Release(i32* %46)
  store i32* %47, i32** %3, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = icmp eq i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %51)
  %53 = call i32 @memset(%struct.TYPE_4__* %6, i32 0, i32 16)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 16, i32* %54, align 8
  %55 = load i32*, i32** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32* %55, i32** %56, align 8
  store i32* null, i32** %2, align 8
  %57 = call i32* @SHCreateShellFolderViewEx(%struct.TYPE_4__* %6, i32** %2)
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** @S_OK, align 8
  %60 = icmp eq i32* %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %62)
  %64 = load i32*, i32** %2, align 8
  %65 = icmp ne i32* %64, null
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %67)
  %69 = load i32*, i32** %2, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %0
  %72 = load i32*, i32** %2, align 8
  %73 = call i32* @IShellView_Release(i32* %72)
  store i32* %73, i32** %3, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = icmp eq i32* %74, null
  %76 = zext i1 %75 to i32
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %77)
  br label %79

79:                                               ; preds = %71, %0
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @IShellFolder_Release(i32* %80)
  ret void
}

declare dso_local i32* @SHGetDesktopFolder(i32**) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32* @SHCreateShellFolderViewEx(%struct.TYPE_4__*, i32**) #1

declare dso_local i32* @IShellView_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32* @IShellView_Release(i32*) #1

declare dso_local i32 @IShellFolder_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
