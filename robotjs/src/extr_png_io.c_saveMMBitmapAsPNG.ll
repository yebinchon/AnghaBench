; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_png_io.c_saveMMBitmapAsPNG.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_png_io.c_saveMMBitmapAsPNG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@PNG_TRANSFORM_IDENTITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saveMMBitmapAsPNG(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.TYPE_4__* @createPNGWriteInfo(i32 %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %7, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @fclose(i32* %18)
  store i32 -1, i32* %3, align 4
  br label %38

20:                                               ; preds = %13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @png_init_io(i32 %23, i32* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PNG_TRANSFORM_IDENTITY, align 4
  %33 = call i32 @png_write_png(i32 %28, i32 %31, i32 %32, i32* null)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @fclose(i32* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = call i32 @destroyPNGWriteInfo(%struct.TYPE_4__* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %20, %17, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @createPNGWriteInfo(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @png_init_io(i32, i32*) #1

declare dso_local i32 @png_write_png(i32, i32, i32, i32*) #1

declare dso_local i32 @destroyPNGWriteInfo(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
