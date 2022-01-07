; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_treeview.c_test_TVM_GETNEXTITEM.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_treeview.c_test_TVM_GETNEXTITEM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TVM_GETNEXTITEM = common dso_local global i32 0, align 4
@TVGN_ROOT = common dso_local global i32 0, align 4
@hRoot = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"got %p, expected %p\0A\00", align 1
@TVI_ROOT = common dso_local global i64 0, align 8
@hChild = common dso_local global i32* null, align 8
@TVGN_CHILD = common dso_local global i32 0, align 4
@TVGN_PARENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_TVM_GETNEXTITEM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_TVM_GETNEXTITEM() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @create_treeview_control(i32 0)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @fill_tree(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %8 = load i32, i32* @TVGN_ROOT, align 4
  %9 = call i64 @SendMessageA(i32 %6, i32 %7, i32 %8, i32 0)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = load i32*, i32** @hRoot, align 8
  %13 = icmp eq i32* %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32*, i32** %1, align 8
  %16 = load i32*, i32** @hRoot, align 8
  %17 = call i32 (i32, i8*, i32*, ...) @ok(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %15, i32* %16)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %20 = load i32, i32* @TVGN_ROOT, align 4
  %21 = load i64, i64* @TVI_ROOT, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i64 @SendMessageA(i32 %18, i32 %19, i32 %20, i32 %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %1, align 8
  %25 = load i32*, i32** %1, align 8
  %26 = load i32*, i32** @hRoot, align 8
  %27 = icmp eq i32* %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** %1, align 8
  %30 = load i32*, i32** @hRoot, align 8
  %31 = call i32 (i32, i8*, i32*, ...) @ok(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %29, i32* %30)
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %34 = load i32, i32* @TVGN_ROOT, align 4
  %35 = load i32*, i32** @hRoot, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = call i64 @SendMessageA(i32 %32, i32 %33, i32 %34, i32 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %1, align 8
  %39 = load i32*, i32** %1, align 8
  %40 = load i32*, i32** @hRoot, align 8
  %41 = icmp eq i32* %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32*, i32** %1, align 8
  %44 = load i32*, i32** @hRoot, align 8
  %45 = call i32 (i32, i8*, i32*, ...) @ok(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %43, i32* %44)
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %48 = load i32, i32* @TVGN_ROOT, align 4
  %49 = load i32*, i32** @hChild, align 8
  %50 = ptrtoint i32* %49 to i32
  %51 = call i64 @SendMessageA(i32 %46, i32 %47, i32 %48, i32 %50)
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %1, align 8
  %53 = load i32*, i32** %1, align 8
  %54 = load i32*, i32** @hRoot, align 8
  %55 = icmp eq i32* %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** %1, align 8
  %58 = load i32*, i32** @hRoot, align 8
  %59 = call i32 (i32, i8*, i32*, ...) @ok(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %57, i32* %58)
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %62 = load i32, i32* @TVGN_CHILD, align 4
  %63 = call i64 @SendMessageA(i32 %60, i32 %61, i32 %62, i32 0)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %1, align 8
  %65 = load i32*, i32** %1, align 8
  %66 = load i32*, i32** @hRoot, align 8
  %67 = icmp eq i32* %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32*, i32** %1, align 8
  %70 = load i32*, i32** @hRoot, align 8
  %71 = call i32 (i32, i8*, i32*, ...) @ok(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %69, i32* %70)
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %74 = load i32, i32* @TVGN_CHILD, align 4
  %75 = load i32*, i32** @hRoot, align 8
  %76 = ptrtoint i32* %75 to i32
  %77 = call i64 @SendMessageA(i32 %72, i32 %73, i32 %74, i32 %76)
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %1, align 8
  %79 = load i32*, i32** %1, align 8
  %80 = load i32*, i32** @hChild, align 8
  %81 = icmp eq i32* %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32*, i32** %1, align 8
  %84 = load i32*, i32** @hChild, align 8
  %85 = call i32 (i32, i8*, i32*, ...) @ok(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %83, i32* %84)
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %88 = load i32, i32* @TVGN_CHILD, align 4
  %89 = load i64, i64* @TVI_ROOT, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i64 @SendMessageA(i32 %86, i32 %87, i32 %88, i32 %90)
  %92 = inttoptr i64 %91 to i32*
  store i32* %92, i32** %1, align 8
  %93 = load i32*, i32** %1, align 8
  %94 = load i32*, i32** @hRoot, align 8
  %95 = icmp eq i32* %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %1, align 8
  %98 = load i32*, i32** @hRoot, align 8
  %99 = call i32 (i32, i8*, i32*, ...) @ok(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %97, i32* %98)
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %102 = load i32, i32* @TVGN_PARENT, align 4
  %103 = call i64 @SendMessageA(i32 %100, i32 %101, i32 %102, i32 0)
  %104 = inttoptr i64 %103 to i32*
  store i32* %104, i32** %1, align 8
  %105 = load i32*, i32** %1, align 8
  %106 = icmp eq i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = load i32*, i32** %1, align 8
  %109 = call i32 (i32, i8*, i32*, ...) @ok(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %108)
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %112 = load i32, i32* @TVGN_PARENT, align 4
  %113 = load i32*, i32** @hChild, align 8
  %114 = ptrtoint i32* %113 to i32
  %115 = call i64 @SendMessageA(i32 %110, i32 %111, i32 %112, i32 %114)
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %1, align 8
  %117 = load i32*, i32** %1, align 8
  %118 = load i32*, i32** @hRoot, align 8
  %119 = icmp eq i32* %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32*, i32** %1, align 8
  %122 = load i32*, i32** @hRoot, align 8
  %123 = call i32 (i32, i8*, i32*, ...) @ok(i32 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %121, i32* %122)
  %124 = load i32, i32* %2, align 4
  %125 = call i32 @DestroyWindow(i32 %124)
  ret void
}

declare dso_local i32 @create_treeview_control(i32) #1

declare dso_local i32 @fill_tree(i32) #1

declare dso_local i64 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32*, ...) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
