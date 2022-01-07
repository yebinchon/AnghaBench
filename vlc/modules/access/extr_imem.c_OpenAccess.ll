; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_imem.c_OpenAccess.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_imem.c_OpenAccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32, i32*, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"imem-cat\00", align 1
@ControlAccess = common dso_local global i32 0, align 4
@Block = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenAccess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenAccess(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @OpenCommon(i32* %8, i32** %5, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %15, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @var_InheritInteger(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 4
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @CloseCommon(i32* %21)
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %2, align 4
  br label %39

24:                                               ; preds = %16
  %25 = load i32, i32* @ControlAccess, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @Block, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %24, %20, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @OpenCommon(i32*, i32**, i32) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @CloseCommon(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
