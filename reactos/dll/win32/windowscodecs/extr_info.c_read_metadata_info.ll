; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_info.c_read_metadata_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_info.c_read_metadata_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32*, i32 }

@containers_keyname = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @read_metadata_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_metadata_info(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @containers_keyname, align 4
  %12 = call i32 @ComponentInfo_GetGuidList(i32 %10, i32 %11, i32 0, i32* null, i32* %4)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @heap_calloc(i32 %19, i32 4)
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %87

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @containers_keyname, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ComponentInfo_GetGuidList(i32 %29, i32 %30, i32 %31, i32* %32, i32* %4)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @FAILED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @heap_free(i32* %38)
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %2, align 4
  br label %87

41:                                               ; preds = %26
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  %52 = call i8* @heap_calloc(i32 %51, i32 1)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %2, align 4
  br label %87

61:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %81, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr i8, i8* %76, i64 %78
  %80 = call i32 @read_metadata_patterns(%struct.TYPE_4__* %67, i32* %73, i8* %79)
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %62

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84, %41
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %59, %37, %24, %16
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @ComponentInfo_GetGuidList(i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i8* @heap_calloc(i32, i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @read_metadata_patterns(%struct.TYPE_4__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
