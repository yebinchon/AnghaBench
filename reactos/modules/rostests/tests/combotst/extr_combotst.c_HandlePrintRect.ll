; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/combotst/extr_combotst.c_HandlePrintRect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/combotst/extr_combotst.c_HandlePrintRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@BUFFERLEN = common dso_local global i32 0, align 4
@TextBuffer = common dso_local global i8* null, align 8
@g_hwnd = common dso_local global i32 0, align 4
@ResultX = common dso_local global i32 0, align 4
@ResultY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @HandlePrintRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HandlePrintRect(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  %13 = bitcast %struct.TYPE_4__* %10 to i8*
  %14 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 16, i1 false)
  %15 = load i32, i32* @BUFFERLEN, align 4
  %16 = sub nsw i32 %15, 8
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** @TextBuffer, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 8
  store i8 %17, i8* %19, align 1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @SendMessage(i32 %20, i32 %21, i32 %22, i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** @TextBuffer, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 8
  %29 = call i32 @htoa(i32 %26, i8* %28)
  %30 = load i8*, i8** @TextBuffer, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 16
  store i8 32, i8* %31, align 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** @TextBuffer, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 17
  %36 = call i32 @htoa(i32 %33, i8* %35)
  %37 = load i8*, i8** @TextBuffer, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 25
  store i8 32, i8* %38, align 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** @TextBuffer, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 26
  %43 = call i32 @htoa(i32 %40, i8* %42)
  %44 = load i8*, i8** @TextBuffer, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 34
  store i8 32, i8* %45, align 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** @TextBuffer, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 35
  %50 = call i32 @htoa(i32 %47, i8* %49)
  %51 = load i32, i32* @g_hwnd, align 4
  %52 = call i32 @GetWindowRect(i32 %51, %struct.TYPE_4__* %10)
  %53 = load i8*, i8** @TextBuffer, align 8
  %54 = load i32, i32* @ResultX, align 4
  %55 = load i32, i32* @ResultY, align 4
  %56 = bitcast %struct.TYPE_4__* %10 to { i64, i64 }*
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 4
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %56, i32 0, i32 1
  %60 = load i64, i64* %59, align 4
  %61 = call i32 @PrintTextXY(i8* %53, i32 %54, i32 %55, i32 43, i64 %58, i64 %60)
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i64) #2

declare dso_local i32 @htoa(i32, i8*) #2

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @PrintTextXY(i8*, i32, i32, i32, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
