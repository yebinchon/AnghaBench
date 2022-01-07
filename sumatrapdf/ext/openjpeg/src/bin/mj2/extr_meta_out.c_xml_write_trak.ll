; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_write_trak.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_write_trak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [42 x i8] c"    <Track BoxType=\22trak\22 Instance=\22%d\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"    </Track>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_write_trak(i32* %0, i32* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @xml_write_tkhd(i32* %18, i32* %19, %struct.TYPE_6__* %20, i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @xml_write_mdia(i32* %23, i32* %24, %struct.TYPE_6__* %25, i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @xml_write_udta(i32* %28, i32* %29, %struct.TYPE_6__* %30, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %6
  %38 = load i32, i32* %11, align 4
  %39 = icmp ugt i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ule i32 %41, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  %48 = sub i32 %47, 1
  store i32 %48, i32* %14, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = call i64 @xml_out_frame(i32* %55, i32* %56, i32* %57, i32 %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %68

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %40, %37
  br label %65

65:                                               ; preds = %64, %6
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %62
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @xml_write_tkhd(i32*, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @xml_write_mdia(i32*, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @xml_write_udta(i32*, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @xml_out_frame(i32*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
