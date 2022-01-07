; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfopen.c_dwarfopen.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfopen.c_dwarfopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, %struct.TYPE_25__, %struct.TYPE_25__, %struct.TYPE_25__, %struct.TYPE_25__, %struct.TYPE_25__, %struct.TYPE_25__, %struct.TYPE_25__, %struct.TYPE_25__, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }

@nil = common dso_local global %struct.TYPE_24__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"nil pe passed to dwarfopen\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c".debug_abbrev\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c".debug_aranges\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c".debug_line\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c".debug_pubnames\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c".debug_info\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c".debug_frame\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c".debug_ranges\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c".debug_str\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed to open dwarf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @dwarfopen(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %5 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %6 = load %struct.TYPE_24__*, %struct.TYPE_24__** @nil, align 8
  %7 = icmp eq %struct.TYPE_24__* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 @werrstr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** @nil, align 8
  store %struct.TYPE_24__* %10, %struct.TYPE_24__** %2, align 8
  br label %135

11:                                               ; preds = %1
  %12 = call %struct.TYPE_24__* @mallocz(i32 80, i32 1)
  store %struct.TYPE_24__* %12, %struct.TYPE_24__** %4, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** @nil, align 8
  %15 = icmp eq %struct.TYPE_24__* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** @nil, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %2, align 8
  br label %135

18:                                               ; preds = %11
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 9
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %21, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %23, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 8
  %28 = call i64 %24(%struct.TYPE_24__* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_25__* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %18
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %32, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 7
  %37 = call i64 %33(%struct.TYPE_24__* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_25__* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %30
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %41, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 5
  %46 = call i64 %42(%struct.TYPE_24__* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_25__* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %50, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 4
  %55 = call i64 %51(%struct.TYPE_24__* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_25__* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %48
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %59, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 1
  %64 = call i64 %60(%struct.TYPE_24__* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_25__* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57, %48, %39, %30, %18
  br label %90

67:                                               ; preds = %57
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %69, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 6
  %74 = call i64 %70(%struct.TYPE_24__* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_25__* %73)
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %76, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 3
  %81 = call i64 %77(%struct.TYPE_24__* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_25__* %80)
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %83, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = call i64 %84(%struct.TYPE_24__* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_25__* %87)
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_24__* %89, %struct.TYPE_24__** %2, align 8
  br label %135

90:                                               ; preds = %66
  %91 = call i32 @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %94, align 8
  %96 = call i32 @free(%struct.TYPE_24__* %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %99, align 8
  %101 = call i32 @free(%struct.TYPE_24__* %100)
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %104, align 8
  %106 = call i32 @free(%struct.TYPE_24__* %105)
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  %111 = call i32 @free(%struct.TYPE_24__* %110)
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %114, align 8
  %116 = call i32 @free(%struct.TYPE_24__* %115)
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %119, align 8
  %121 = call i32 @free(%struct.TYPE_24__* %120)
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %124, align 8
  %126 = call i32 @free(%struct.TYPE_24__* %125)
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %129, align 8
  %131 = call i32 @free(%struct.TYPE_24__* %130)
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %133 = call i32 @free(%struct.TYPE_24__* %132)
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** @nil, align 8
  store %struct.TYPE_24__* %134, %struct.TYPE_24__** %2, align 8
  br label %135

135:                                              ; preds = %90, %67, %16, %8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  ret %struct.TYPE_24__* %136
}

declare dso_local i32 @werrstr(i8*) #1

declare dso_local %struct.TYPE_24__* @mallocz(i32, i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @free(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
