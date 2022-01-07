; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfinfo.c_getstring.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfinfo.c_getstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }

@getstring.nbad = internal global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"dwarf: bad string pointer 0x%lux in attribute\00", align 1
@nil = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i8**)* @getstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getstring(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %13 [
    i32 129, label %14
    i32 128, label %45
  ]

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %78

14:                                               ; preds = %4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %17, %21
  store i64 %22, i64* %11, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = call i8* @dwarfgetstring(%struct.TYPE_13__* %23)
  %25 = load i8**, i8*** %9, align 8
  store i8* %24, i8** %25, align 8
  store i64 0, i64* %10, align 8
  br label %26

26:                                               ; preds = %41, %14
  %27 = load i8**, i8*** %9, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i8**, i8*** %9, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @isprint(i8 signext %38)
  %40 = call i32 @assert(i32 %39)
  br label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  br label %26

44:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %78

45:                                               ; preds = %4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = call i64 @dwarfget4(%struct.TYPE_13__* %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp uge i64 %48, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %45
  %57 = load i32, i32* @getstring.nbad, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @getstring.nbad, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @werrstr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i8*, i8** @nil, align 8
  %65 = load i8**, i8*** %9, align 8
  store i8* %64, i8** %65, align 8
  br label %77

66:                                               ; preds = %45
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8**, i8*** %9, align 8
  store i8* %75, i8** %76, align 8
  br label %77

77:                                               ; preds = %66, %63
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %44, %13
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i8* @dwarfgetstring(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i64 @dwarfget4(%struct.TYPE_13__*) #1

declare dso_local i32 @werrstr(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
