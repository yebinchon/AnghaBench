; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_process_palette.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_process_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [15 x i8] c"PALETTE(c=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_palette(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @in_uint8s(i32 %9, i32 2)
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @in_uint16_le(i32 %11, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @in_uint8s(i32 %15, i32 2)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 12, %19
  %21 = trunc i64 %20 to i32
  %22 = call i64 @malloc(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 12, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @in_uint8s(i32 %29, i32 %34)
  br label %80

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @DEBUG(i8* %40)
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %68, %36
  %43 = load i32, i32* %8, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @in_uint8(i32 %53, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @in_uint8(i32 %58, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @in_uint8(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %47
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %42

71:                                               ; preds = %42
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @ui_create_colourmap(i32* %72, %struct.TYPE_5__* %6)
  store i32 %73, i32* %7, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @ui_set_colourmap(i32* %74, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = call i32 @free(%struct.TYPE_6__* %78)
  br label %80

80:                                               ; preds = %71, %28
  ret void
}

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @ui_create_colourmap(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ui_set_colourmap(i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
