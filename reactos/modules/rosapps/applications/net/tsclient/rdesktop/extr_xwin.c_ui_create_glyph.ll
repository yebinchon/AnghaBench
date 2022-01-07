; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_create_glyph.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_create_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8*, i8* }

@ZPixmap = common dso_local global i32 0, align 4
@MSBFirst = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_create_glyph(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 7
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @XCreatePixmap(i32 %17, i32 %20, i32 %21, i32 %22, i32 1)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @XCreateGC(i32 %32, i32 %33, i32 0, i32* null)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %29, %4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ZPixmap, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.TYPE_10__* @XCreateImage(i32 %41, i32 %45, i32 1, i32 %46, i32 0, i8* %48, i32 %49, i32 %50, i32 8, i32 %51)
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %9, align 8
  %53 = load i8*, i8** @MSBFirst, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @MSBFirst, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %60 = call i32 @XInitImage(%struct.TYPE_10__* %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @XPutImage(i32 %63, i32 %64, i32 %68, %struct.TYPE_10__* %69, i32 0, i32 0, i32 0, i32 0, i32 %70, i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = call i32 @XFree(%struct.TYPE_10__* %73)
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local i32 @XCreatePixmap(i32, i32, i32, i32, i32) #1

declare dso_local i32 @XCreateGC(i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @XCreateImage(i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @XInitImage(%struct.TYPE_10__*) #1

declare dso_local i32 @XPutImage(i32, i32, i32, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFree(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
