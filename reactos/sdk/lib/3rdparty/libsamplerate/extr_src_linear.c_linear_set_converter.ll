; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_linear.c_linear_set_converter.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_linear.c_linear_set_converter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_7__*)*, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@SRC_LINEAR = common dso_local global i32 0, align 4
@SRC_ERR_BAD_CONVERTER = common dso_local global i32 0, align 4
@SRC_ERR_MALLOC_FAILED = common dso_local global i32 0, align 4
@LINEAR_MAGIC_MARKER = common dso_local global i32 0, align 4
@linear_vari_process = common dso_local global i8* null, align 8
@SRC_ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linear_set_converter(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SRC_LINEAR, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @SRC_ERR_BAD_CONVERTER, align 4
  store i32 %11, i32* %3, align 4
  br label %66

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = call i32 @free(%struct.TYPE_8__* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %23, align 8
  br label %24

24:                                               ; preds = %17, %12
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = add i64 8, %34
  %36 = trunc i64 %35 to i32
  %37 = call %struct.TYPE_8__* @calloc(i32 1, i32 %36)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %6, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %40, align 8
  br label %41

41:                                               ; preds = %29, %24
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = icmp eq %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @SRC_ERR_MALLOC_FAILED, align 4
  store i32 %45, i32* %3, align 4
  br label %66

46:                                               ; preds = %41
  %47 = load i32, i32* @LINEAR_MAGIC_MARKER, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i8*, i8** @linear_vari_process, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @linear_vari_process, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32 (%struct.TYPE_7__*)* @linear_reset, i32 (%struct.TYPE_7__*)** %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = call i32 @linear_reset(%struct.TYPE_7__* %63)
  %65 = load i32, i32* @SRC_ERR_NO_ERROR, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %46, %44, %10
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @linear_reset(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
