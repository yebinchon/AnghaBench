; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_richole.c_CreateIRichEditOle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_richole.c_CreateIRichEditOle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_11__, %struct.TYPE_11__*, i32, i32, i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@reo_unk_vtbl = common dso_local global i32 0, align 4
@revt = common dso_local global i32 0, align 4
@tdvt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Created %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateIRichEditOle(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  %9 = call %struct.TYPE_12__* @heap_alloc(i32 64)
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %8, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

13:                                               ; preds = %3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32* @reo_unk_vtbl, i32** %16, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32* @revt, i32** %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32* @tdvt, i32** %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 7
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 6
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 5
  %34 = call i32 @list_init(i32* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  %37 = call i32 @list_init(i32* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = icmp ne %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %13
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %43, align 8
  br label %49

44:                                               ; preds = %13
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %48, align 8
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %52, align 8
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %12
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_12__* @heap_alloc(i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
