; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_pe.c_pefindrva.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_pe.c_pefindrva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IMAGE_SECTION_HEADER = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Finding RVA for Physical %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Section %d name %s Raw %x Virt %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RVA %x\0A\00", align 1
@nil = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pefindrva(%struct._IMAGE_SECTION_HEADER* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._IMAGE_SECTION_HEADER*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct._IMAGE_SECTION_HEADER* %0, %struct._IMAGE_SECTION_HEADER** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %9)
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %95, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %98

15:                                               ; preds = %11
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct._IMAGE_SECTION_HEADER*, %struct._IMAGE_SECTION_HEADER** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %18, i64 %20
  %22 = call %struct.TYPE_2__* @ANSI_NAME_STRING(%struct._IMAGE_SECTION_HEADER* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct._IMAGE_SECTION_HEADER*, %struct._IMAGE_SECTION_HEADER** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %25, i64 %27
  %29 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct._IMAGE_SECTION_HEADER*, %struct._IMAGE_SECTION_HEADER** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %31, i64 %33
  %35 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %17, i32 %24, i64 %30, i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load %struct._IMAGE_SECTION_HEADER*, %struct._IMAGE_SECTION_HEADER** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %39, i64 %41
  %43 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %38, %44
  br i1 %45, label %46, label %94

46:                                               ; preds = %15
  %47 = load i64, i64* %7, align 8
  %48 = load %struct._IMAGE_SECTION_HEADER*, %struct._IMAGE_SECTION_HEADER** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %48, i64 %50
  %52 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct._IMAGE_SECTION_HEADER*, %struct._IMAGE_SECTION_HEADER** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %54, i64 %56
  %58 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %53, %59
  %61 = icmp slt i64 %47, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %46
  %63 = load i64, i64* %7, align 8
  %64 = load %struct._IMAGE_SECTION_HEADER*, %struct._IMAGE_SECTION_HEADER** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %64, i64 %66
  %68 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %63, %69
  %71 = load %struct._IMAGE_SECTION_HEADER*, %struct._IMAGE_SECTION_HEADER** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %71, i64 %73
  %75 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %70, %76
  %78 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = load %struct._IMAGE_SECTION_HEADER*, %struct._IMAGE_SECTION_HEADER** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %80, i64 %82
  %84 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %79, %85
  %87 = load %struct._IMAGE_SECTION_HEADER*, %struct._IMAGE_SECTION_HEADER** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %87, i64 %89
  %91 = getelementptr inbounds %struct._IMAGE_SECTION_HEADER, %struct._IMAGE_SECTION_HEADER* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %86, %92
  store i64 %93, i64* %4, align 8
  br label %100

94:                                               ; preds = %46, %15
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %11

98:                                               ; preds = %11
  %99 = load i64, i64* @nil, align 8
  store i64 %99, i64* %4, align 8
  br label %100

100:                                              ; preds = %98, %62
  %101 = load i64, i64* %4, align 8
  ret i64 %101
}

declare dso_local i32 @DPRINT(i8*, i64, ...) #1

declare dso_local %struct.TYPE_2__* @ANSI_NAME_STRING(%struct._IMAGE_SECTION_HEADER*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
