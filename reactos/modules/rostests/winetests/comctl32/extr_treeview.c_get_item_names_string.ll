; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_treeview.c_get_item_names_string.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_treeview.c_get_item_names_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32*, i32, i32 }

@TVM_GETNEXTITEM = common dso_local global i32 0, align 4
@TVGN_ROOT = common dso_local global i32 0, align 4
@TVGN_CHILD = common dso_local global i32 0, align 4
@TVIF_TEXT = common dso_local global i32 0, align 4
@TVM_GETITEMA = common dso_local global i32 0, align 4
@TVGN_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @get_item_names_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_item_names_string(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [16 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.TYPE_2__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %16 = load i32, i32* @TVGN_ROOT, align 4
  %17 = call i64 @SendMessageA(i32 %14, i32 %15, i32 %16, i32 0)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  br label %21

21:                                               ; preds = %13, %3
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %24 = load i32, i32* @TVGN_CHILD, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = call i64 @SendMessageA(i32 %22, i32 %23, i32 %24, i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %8, align 8
  %29 = load i32, i32* @TVIF_TEXT, align 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  store i32 %29, i32* %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  store i32* %31, i32** %32, align 8
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i32 16, i32* %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TVM_GETITEMA, align 4
  %38 = ptrtoint %struct.TYPE_2__* %7 to i32
  %39 = call i64 @SendMessageA(i32 %36, i32 %37, i32 0, i32 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcat(i8* %40, i8* %42)
  br label %44

44:                                               ; preds = %47, %21
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %6, align 8
  call void @get_item_names_string(i32 %48, i32* %49, i8* %50)
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %53 = load i32, i32* @TVGN_NEXT, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = ptrtoint i32* %54 to i32
  %56 = call i64 @SendMessageA(i32 %51, i32 %52, i32 %53, i32 %55)
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %8, align 8
  br label %44

58:                                               ; preds = %44
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @SendMessageA(i32, i32, i32, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
