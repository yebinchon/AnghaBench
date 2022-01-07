; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_chroma.c_OutputCheckFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_chroma.c_OutputCheckFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@OutputCheckFormat.rgb_fmts = internal constant [4 x i32] [i32 129, i32 131, i32 130, i32 128], align 16
@VDP_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s capabilities query failure: %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"output surface\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"using RGBA format %u\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"no supported output surface format\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.TYPE_3__*, i32*)* @OutputCheckFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OutputCheckFormat(i32* %0, i32* %1, i32 %2, %struct.TYPE_3__* %3, i32* noalias %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %64, %5
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @OutputCheckFormat.rgb_fmts, i64 0, i64 0))
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %12, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* @OutputCheckFormat.rgb_fmts, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @vdp_output_surface_query_capabilities(i32* %22, i32 %23, i32 %27, i32* %15, i64* %13, i64* %14)
  store i64 %28, i64* %16, align 8
  %29 = load i64, i64* %16, align 8
  %30 = load i64, i64* @VDP_STATUS_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %16, align 8
  %36 = call i32 @vdp_get_error_string(i32* %34, i64 %35)
  %37 = call i32 (i32*, i8*, ...) @msg_Err(i32* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %64

38:                                               ; preds = %21
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i64, i64* %14, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %41, %38
  br label %64

54:                                               ; preds = %47
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* @OutputCheckFormat.rgb_fmts, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @msg_Dbg(i32* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  store i32 0, i32* %6, align 4
  br label %71

64:                                               ; preds = %53, %32
  %65 = load i32, i32* %12, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %17

67:                                               ; preds = %17
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 (i32*, i8*, ...) @msg_Err(i32* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %54
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @vdp_output_surface_query_capabilities(i32*, i32, i32, i32*, i64*, i64*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @vdp_get_error_string(i32*, i64) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
