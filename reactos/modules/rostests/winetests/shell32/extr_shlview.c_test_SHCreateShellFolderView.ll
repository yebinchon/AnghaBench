; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_SHCreateShellFolderView.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_SHCreateShellFolderView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@S_OK = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"got (0x%08x)\0A\00", align 1
@E_INVALIDARG = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"psv = %p\0A\00", align 1
@IID_CDefView = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"refCount = %u\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHCreateShellFolderView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHCreateShellFolderView() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = call i32* @SHGetDesktopFolder(i32** %1)
  store i32* %7, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32*, i32** @S_OK, align 8
  %10 = icmp eq i32* %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %14 = call i32* @SHCreateShellFolderView(%struct.TYPE_4__* null, i32** %2)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** @E_INVALIDARG, align 8
  %17 = icmp eq i32* %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %24)
  %26 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 16)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %27 = call i32* @SHCreateShellFolderView(%struct.TYPE_4__* %3, i32** %2)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** @E_INVALIDARG, align 8
  %30 = icmp eq i32* %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  %34 = load i32*, i32** %2, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %37)
  %39 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 16)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 15, i32* %40, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %41 = call i32* @SHCreateShellFolderView(%struct.TYPE_4__* %3, i32** %2)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** @E_INVALIDARG, align 8
  %44 = icmp eq i32* %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %46)
  %48 = load i32*, i32** %2, align 8
  %49 = icmp eq i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %51)
  %53 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 16)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 17, i32* %54, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %55 = call i32* @SHCreateShellFolderView(%struct.TYPE_4__* %3, i32** %2)
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** @E_INVALIDARG, align 8
  %58 = icmp eq i32* %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %60)
  %62 = load i32*, i32** %2, align 8
  %63 = icmp eq i32* %62, null
  %64 = zext i1 %63 to i32
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %65)
  %67 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 16)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 15, i32* %68, align 8
  %69 = load i32*, i32** %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32* %69, i32** %70, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %71 = call i32* @SHCreateShellFolderView(%struct.TYPE_4__* %3, i32** %2)
  store i32* %71, i32** %6, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** @E_INVALIDARG, align 8
  %74 = icmp eq i32* %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = icmp eq i32* %78, null
  %80 = zext i1 %79 to i32
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %81)
  %83 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 16)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 16, i32* %84, align 8
  %85 = load i32*, i32** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32* %85, i32** %86, align 8
  store i32* null, i32** %2, align 8
  %87 = call i32* @SHCreateShellFolderView(%struct.TYPE_4__* %3, i32** %2)
  store i32* %87, i32** %6, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** @S_OK, align 8
  %90 = icmp eq i32* %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %92)
  %94 = load i32*, i32** %2, align 8
  %95 = icmp ne i32* %94, null
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %97)
  %99 = load i32*, i32** %2, align 8
  %100 = bitcast i32** %5 to i8**
  %101 = call i32* @IShellView_QueryInterface(i32* %99, i32* @IID_CDefView, i8** %100)
  store i32* %101, i32** %6, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load i32*, i32** @S_OK, align 8
  %104 = icmp eq i32* %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %106)
  %108 = load i32*, i32** %5, align 8
  %109 = load i32*, i32** %2, align 8
  %110 = icmp eq i32* %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %112)
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @IUnknown_Release(i32* %114)
  %116 = load i32*, i32** %2, align 8
  %117 = call i32* @IShellView_Release(i32* %116)
  store i32* %117, i32** %4, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = icmp eq i32* %118, null
  %120 = zext i1 %119 to i32
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %121)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @IShellFolder_Release(i32* %123)
  ret void
}

declare dso_local i32* @SHGetDesktopFolder(i32**) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i32* @SHCreateShellFolderView(%struct.TYPE_4__*, i32**) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

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
