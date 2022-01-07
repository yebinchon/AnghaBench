; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_types.c_swaynag_types_add_default.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_types.c_swaynag_types_add_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag_type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"<defaults>\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pango:Monospace 10\00", align 1
@ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP = common dso_local global i32 0, align 4
@ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT = common dso_local global i32 0, align 4
@ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"warning\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swaynag_types_add_default(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.swaynag_type*, align 8
  %4 = alloca %struct.swaynag_type*, align 8
  %5 = alloca %struct.swaynag_type*, align 8
  store i32* %0, i32** %2, align 8
  %6 = call %struct.swaynag_type* @swaynag_type_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.swaynag_type* %6, %struct.swaynag_type** %3, align 8
  %7 = call i32 @strdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %9 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %8, i32 0, i32 14
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP, align 4
  %11 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %16 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %18 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %17, i32 0, i32 1
  store i32 858993663, i32* %18, align 4
  %19 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %20 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %19, i32 0, i32 2
  store i32 842150655, i32* %20, align 4
  %21 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %22 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %21, i32 0, i32 3
  store i32 -1, i32* %22, align 4
  %23 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %24 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %23, i32 0, i32 4
  store i32 572662527, i32* %24, align 4
  %25 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %26 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %25, i32 0, i32 5
  store i32 1145324799, i32* %26, align 4
  %27 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %28 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %27, i32 0, i32 6
  store i32 2, i32* %28, align 4
  %29 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %30 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %29, i32 0, i32 7
  store i32 8, i32* %30, align 4
  %31 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %32 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %31, i32 0, i32 8
  store i32 3, i32* %32, align 4
  %33 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %34 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %33, i32 0, i32 9
  store i32 3, i32* %34, align 4
  %35 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %36 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %35, i32 0, i32 10
  store i32 20, i32* %36, align 4
  %37 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %38 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %37, i32 0, i32 11
  store i32 15, i32* %38, align 4
  %39 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %40 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %39, i32 0, i32 12
  store i32 2, i32* %40, align 4
  %41 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %42 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %41, i32 0, i32 13
  store i32 3, i32* %42, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %45 = call i32 @list_add(i32* %43, %struct.swaynag_type* %44)
  %46 = call %struct.swaynag_type* @swaynag_type_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.swaynag_type* %46, %struct.swaynag_type** %4, align 8
  %47 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %48 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %47, i32 0, i32 1
  store i32 1745488639, i32* %48, align 4
  %49 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %50 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %49, i32 0, i32 2
  store i32 -1879047937, i32* %50, align 4
  %51 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %52 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %51, i32 0, i32 3
  store i32 -1, i32* %52, align 4
  %53 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %54 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %53, i32 0, i32 4
  store i32 -651942657, i32* %54, align 4
  %55 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %56 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %55, i32 0, i32 5
  store i32 1191774719, i32* %56, align 4
  %57 = load i32*, i32** %2, align 8
  %58 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %59 = call i32 @list_add(i32* %57, %struct.swaynag_type* %58)
  %60 = call %struct.swaynag_type* @swaynag_type_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store %struct.swaynag_type* %60, %struct.swaynag_type** %5, align 8
  %61 = load %struct.swaynag_type*, %struct.swaynag_type** %5, align 8
  %62 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %61, i32 0, i32 1
  store i32 -4128513, i32* %62, align 4
  %63 = load %struct.swaynag_type*, %struct.swaynag_type** %5, align 8
  %64 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %63, i32 0, i32 2
  store i32 -5766913, i32* %64, align 4
  %65 = load %struct.swaynag_type*, %struct.swaynag_type** %5, align 8
  %66 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %65, i32 0, i32 3
  store i32 255, i32* %66, align 4
  %67 = load %struct.swaynag_type*, %struct.swaynag_type** %5, align 8
  %68 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %67, i32 0, i32 4
  store i32 -1418657537, i32* %68, align 4
  %69 = load %struct.swaynag_type*, %struct.swaynag_type** %5, align 8
  %70 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %69, i32 0, i32 5
  store i32 -1418657537, i32* %70, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = load %struct.swaynag_type*, %struct.swaynag_type** %5, align 8
  %73 = call i32 @list_add(i32* %71, %struct.swaynag_type* %72)
  ret void
}

declare dso_local %struct.swaynag_type* @swaynag_type_new(i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @list_add(i32*, %struct.swaynag_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
