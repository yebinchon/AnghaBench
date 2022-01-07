; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk.c_sqliterkNotify_onBeginParseBtree.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk.c_sqliterkNotify_onBeginParseBtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*)* }

@SQLITERK_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Parsing B-tree -> [root: %d, name: %s, type: %s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @sqliterkNotify_onBeginParseBtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqliterkNotify_onBeginParseBtree(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TYPE_6__*, i32*)*, i32 (%struct.TYPE_6__*, i32*)** %8, align 8
  %10 = icmp ne i32 (%struct.TYPE_6__*, i32*)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_6__*, i32*)*, i32 (%struct.TYPE_6__*, i32*)** %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 %15(%struct.TYPE_6__* %16, i32* %17)
  br label %19

19:                                               ; preds = %11, %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @sqliterkBtreeGetRootPage(i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* @SQLITERK_OK, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @sqliterkPageGetPageno(i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @sqliterkBtreeGetName(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @sqliterkBtreeGetType(i32* %27)
  %29 = call i32 @sqliterkBtreeGetTypeName(i32 %28)
  %30 = call i32 @sqliterkOSDebug(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26, i32 %29)
  ret void
}

declare dso_local i32* @sqliterkBtreeGetRootPage(i32*) #1

declare dso_local i32 @sqliterkOSDebug(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sqliterkPageGetPageno(i32*) #1

declare dso_local i32 @sqliterkBtreeGetName(i32*) #1

declare dso_local i32 @sqliterkBtreeGetTypeName(i32) #1

declare dso_local i32 @sqliterkBtreeGetType(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
