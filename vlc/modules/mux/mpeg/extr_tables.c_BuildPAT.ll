; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tables.c_BuildPAT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tables.c_BuildPAT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BuildPAT(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_4__* %5, i32 %6, %struct.TYPE_4__* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %17, align 8
  store i32* %8, i32** %18, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @dvbpsi_pat_init(i32* %19, i32 %23, i32 %24, i32 1)
  store i32 0, i32* %21, align 4
  br label %26

26:                                               ; preds = %43, %9
  %27 = load i32, i32* %21, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32*, i32** %18, align 8
  %32 = load i32, i32* %21, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %37 = load i32, i32* %21, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dvbpsi_pat_program_add(i32* %19, i32 %35, i32 %41)
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %21, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %21, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load i32*, i32** %10, align 8
  %48 = call i32* @dvbpsi_pat_sections_generate(i32* %47, i32* %19, i32 0)
  store i32* %48, i32** %20, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = call i64 @likely(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  %53 = load i32*, i32** %20, align 8
  %54 = call i32* @WritePSISection(i32* %53)
  store i32* %54, i32** %22, align 8
  %55 = load i32*, i32** %22, align 8
  %56 = call i64 @likely(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %22, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @PEStoTS(i8* %59, i32 %60, i32* %61, i32 %64, i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %58, %52
  %71 = load i32*, i32** %20, align 8
  %72 = call i32 @dvbpsi_DeletePSISections(i32* %71)
  br label %73

73:                                               ; preds = %70, %46
  %74 = call i32 @dvbpsi_pat_empty(i32* %19)
  ret void
}

declare dso_local i32 @dvbpsi_pat_init(i32*, i32, i32, i32) #1

declare dso_local i32 @dvbpsi_pat_program_add(i32*, i32, i32) #1

declare dso_local i32* @dvbpsi_pat_sections_generate(i32*, i32*, i32) #1

declare dso_local i64 @likely(i32*) #1

declare dso_local i32* @WritePSISection(i32*) #1

declare dso_local i32 @PEStoTS(i8*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @dvbpsi_DeletePSISections(i32*) #1

declare dso_local i32 @dvbpsi_pat_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
